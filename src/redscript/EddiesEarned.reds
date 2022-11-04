@wrapMethod(RPGManager)
public final static func GiveReward(gi: GameInstance, rewardID: TweakDBID, opt target: StatsObjectID, opt moneyMultiplier: Float) -> Void {
    moneyMultiplier = 100.0;
    wrappedMethod(gi, rewardID, target, moneyMultiplier);
  }



// let currencyArr: array<wref<CurrencyReward_Record>>;
//     let quantityMods: array<wref<StatModifier_Record>>;
//     let quantity: Int32;
//     let player: ref<PlayerPuppet>;
//     let currencyItemID: ItemID;
//     let transSys: ref<TransactionSystem> = GameInstance.GetTransactionSystem(gi);
//     let moneyQuantity: Int32;
    
//     let i: Int32 = 0;
//     while i < ArraySize(currencyArr) {
//       ArrayClear(quantityMods);
//       currencyArr[i].QuantityModifiers(quantityMods);
//       quantity = Cast<Int32>(RPGManager.CalculateStatModifiers(quantityMods, player.GetGame(), player, target));
//       if quantity > 0 {
//         quantity = moneyMultiplier > 0.00 ? Cast<Int32>(Cast<Float>(quantity) * moneyMultiplier) : quantity;
//         currencyItemID = ItemID.FromTDBID(currencyArr[i].Currency().GetID());
//         transSys.GiveItem(player, currencyItemID, quantity);
//         if currencyItemID == MarketSystem.Money() {
//           moneyQuantity += quantity;
//         };
//       };
//       i += 1;
//     };
