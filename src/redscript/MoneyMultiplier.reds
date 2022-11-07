module AIOMultiplier.Eddies
import AIOMultiplier.UI.ItemMultiplierSettings

@addField(PlayerPuppet)
private let aioMoneyMultiplier: ref<AIOMoneyMultiplier>;

@wrapMethod(PlayerPuppet)
protected cb func OnItemAddedToInventory(evt: ref<ItemAddedEvent>) -> Bool {
    wrappedMethod(evt);

    if Equals(evt.itemID, MarketSystem.Money()) {
        if !IsDefined(this.aioMoneyMultiplier) {
            this.aioMoneyMultiplier = new AIOMoneyMultiplier();
        }

        if this.aioMoneyMultiplier.Continue() {
            this.aioMoneyMultiplier.AddMoney(evt.itemData.GetQuantity(), evt.currentQuantity, this, GameInstance.GetTransactionSystem(this.GetGame()));
            this.aioMoneyMultiplier.continueAdd = true;
        } else {
            this.aioMoneyMultiplier.continueAdd = false;
        }
    }
}

public class AIOMoneyMultiplier {
    let continueAdd: Bool = false;

    private func GetMultiplier() -> Float {
        let itemMultiplierSettings = new ItemMultiplierSettings();

        return itemMultiplierSettings.multiplierMoney;
    }
    
    private func AddMoney(newMoneyQuantity: Int32, oldMoneyQuantity: Int32, player: ref<PlayerPuppet>, transactionSystem: ref<TransactionSystem>) -> Void {
        let eddiesEarned: Int32 = newMoneyQuantity - oldMoneyQuantity;
        let currentEddiesEarned: Int32 = (Cast<Int32>(Cast<Float>(eddiesEarned) * this.GetMultiplier())) - eddiesEarned;

        if currentEddiesEarned > 0 {
            transactionSystem.GiveItem(player, MarketSystem.Money(), currentEddiesEarned);
        }
    }

    private func Continue() -> Bool {
        return !this.continueAdd && true;
    }
}
