import AIOMultiplier.UI.RespecCostSettings
import AIOMultiplier.Notifications.*

@replaceMethod(PlayerDevelopmentData)
public final const func GetTotalRespecCost() -> Int32 {
    let basePrice: Int32 = Cast<Int32>(TweakDBInterface.GetConstantStatModifierRecord(t"Price.RespecBase").Value());
    let singlePerkPrice: Int32 = Cast<Int32>(TweakDBInterface.GetConstantStatModifierRecord(t"Price.RespecSinglePerk").Value());
    let cost: Int32 = basePrice + singlePerkPrice * (this.GetSpentPerkPoints() + this.GetSpentTraitPoints());

    cost = AIORespecCost.NewRespecCost(cost);

    return cost;
}

public class AIORespecCost {
    private static func NewRespecCost(cost: Int32) -> Int32 {
        let respecCostSettings = new RespecCostSettings();

        if(respecCostSettings.noRespecCost) {
            cost = 0;
        }

        return cost;
    }

    private func ShowNotification(msg: String) -> Void {
        let aioNotificationSystem = new AIONotificationSystem();

        aioNotificationSystem.ShowNotification(msg);
    }
}
