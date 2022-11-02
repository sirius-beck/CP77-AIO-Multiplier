import EM_ModSettings.Mod.EM_RespecModSettings

@replaceMethod(PlayerDevelopmentData)
public final const func GetTotalRespecCost() -> Int32 {
  let basePrice: Int32 = Cast<Int32>(TweakDBInterface.GetConstantStatModifierRecord(t"Price.RespecBase").Value());
  let singlePerkPrice: Int32 = Cast<Int32>(TweakDBInterface.GetConstantStatModifierRecord(t"Price.RespecSinglePerk").Value());
  let cost: Int32 = basePrice + singlePerkPrice * (this.GetSpentPerkPoints() + this.GetSpentTraitPoints());

  cost = EM_RespecCost.NewRespecCost(cost);

  return cost;
}

public class EM_RespecCost {
  private static func NewRespecCost(cost: Int32) -> Int32 {
    let respecModSettings = new EM_RespecModSettings();

    if(respecModSettings.freeRespecCost) {
      cost = 0;
    } else {
      cost = Cast<Int32>(Cast<Float>(cost) * respecModSettings.multiplierRespecCost);
    }

    return cost;
  }
}
