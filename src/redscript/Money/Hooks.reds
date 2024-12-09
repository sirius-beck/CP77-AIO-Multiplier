module AIOMultiplier.Money

@addField(PlayerPuppet)
private let aioMoneyMultiplier: ref<AIOMoney>;

@wrapMethod(PlayerPuppet)
protected cb func OnItemAddedToInventory(evt: ref<ItemAddedEvent>) -> Bool {
    wrappedMethod(evt);

    if Equals(evt.itemID, MarketSystem.Money()) {
        if !IsDefined(this.aioMoneyMultiplier) {
            this.aioMoneyMultiplier = new AIOMoney();
        }

        if this.aioMoneyMultiplier.Continue() {
            this
                .aioMoneyMultiplier
                .AddMoney(
                    evt.itemData.GetQuantity(),
                    evt.currentQuantity,
                    this,
                    GameInstance.GetTransactionSystem(this.GetGame())
                );
            this.aioMoneyMultiplier.continueAdd = true;
        } else {
            this.aioMoneyMultiplier.continueAdd = false;
        }
    }
}
