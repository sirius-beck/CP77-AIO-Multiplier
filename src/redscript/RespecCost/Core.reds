module AIOMultiplier.RespecCost

public class AIORespecCost {
    private func NewRespecCost(cost: Int32) -> Int32 {
        let settings = new AIORespecCostSettings();

        if settings.noRespecCost {
            cost = 0;
        }

        return cost;
    }
}
