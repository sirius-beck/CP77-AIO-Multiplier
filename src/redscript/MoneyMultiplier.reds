module AIOMultiplier.Eddies
import AIOMultiplier.UI.MoneyMultiplierSettings

@addField(PlayerPuppet)
private let aioMoneyMultiplier: ref<AIOMoneyMultiplier>;

@wrapMethod(PlayerPuppet)
protected cb func OnItemAddedToInventory(evt: ref<ItemAddedEvent>) -> Bool {
    wrappedMethod(evt);

    if Equals(evt.itemID, MarketSystem.Money()) {
        if !IsDefined(this.aioMoneyMultiplier) {
            this.aioMoneyMultiplier = new AIOMoneyMultiplier();
            this.aioMoneyMultiplier.player = this;
            this.aioMoneyMultiplier.eds = GameInstance.GetTransactionSystem(this.GetGame());
        }

        if this.aioMoneyMultiplier.Continue() {
            this.aioMoneyMultiplier.AddMoney(evt.itemData.GetQuantity(), evt.currentQuantity);
            this.aioMoneyMultiplier.continueAdd = true;
        } else {
            this.aioMoneyMultiplier.continueAdd = false;
        }
    }
}

public class AIOMoneyMultiplier {
    let player: ref<PlayerPuppet>;
    let eds: ref<TransactionSystem>;
    let continueAdd: Bool = false;

    private func GetMultiplier() -> Float {
        let moneyMultiplierSettings = new MoneyMultiplierSettings();

        return moneyMultiplierSettings.multiplierEddies;
    }
    
    public func AddMoney(newMoneyQuantity: Int32, oldMoneyQuantity: Int32) -> Void {
        let eddiesEarned: Int32 = newMoneyQuantity - oldMoneyQuantity;
        let currentEddiesEarned: Int32 = (Cast<Int32>(Cast<Float>(eddiesEarned) * this.GetMultiplier())) - eddiesEarned;

        if currentEddiesEarned > 0 {
            this.eds.GiveItem(this.player, MarketSystem.Money(), currentEddiesEarned);
        }
    }

    private func Continue() -> Bool {
        return !this.continueAdd && true;
    }
}
