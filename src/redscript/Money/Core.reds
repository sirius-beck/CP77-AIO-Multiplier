module AIOMultiplier.Money

public class AIOMoney {
    let continueAdd: Bool = false;

    private func GetMultiplier() -> Float {
        let settings = new AIOMoneySettings();

        return settings.multiplierMoney;
    }

    private func AddMoney(
        newMoneyQuantity: Int32,
        oldMoneyQuantity: Int32,
        player: ref<PlayerPuppet>,
        transactionSystem: ref<TransactionSystem>
    ) -> Void {
        let eddiesEarned: Int32 = newMoneyQuantity - oldMoneyQuantity;
        let currentEddiesEarned: Int32 = Cast<Int32>(Cast<Float>(eddiesEarned) * this.GetMultiplier()) - eddiesEarned;

        if currentEddiesEarned > 0 {
            transactionSystem.GiveItem(player, MarketSystem.Money(), currentEddiesEarned);
        }
    }

    private func Continue() -> Bool {
        return !this.continueAdd && true;
    }
}
