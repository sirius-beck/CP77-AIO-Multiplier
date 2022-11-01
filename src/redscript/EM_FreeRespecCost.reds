import EM_ModSettings.Mod.*

@replaceMethod(PlayerDevelopmentData)
public final const func GetTotalRespecCost() -> Int32 {
  let basePrice: Int32 = Cast<Int32>(TweakDBInterface.GetConstantStatModifierRecord(t"Price.RespecBase").Value());
  let singlePerkPrice: Int32 = Cast<Int32>(TweakDBInterface.GetConstantStatModifierRecord(t"Price.RespecSinglePerk").Value());
  let cost: Int32 = basePrice + singlePerkPrice * (this.GetSpentPerkPoints() + this.GetSpentTraitPoints());

  if(EM_ModSettings.freeRespecCost) {
    cost = 0;
  } else {
    cost = Cast<Int32>(Cast<Float>(cost) * EM_ModSettings.multiplierRespecCost);
  }

  return cost;
}
