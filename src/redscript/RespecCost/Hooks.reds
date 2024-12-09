module AIOMultiplier.RespecCost

@addField(PlayerDevelopmentData)
private let aioRespecCost: ref<AIORespecCost>;

@replaceMethod(PlayerDevelopmentData)
public const final func GetTotalRespecCost() -> Int32 {
    let basePrice: Int32 = Cast<Int32>(TweakDBInterface.GetConstantStatModifierRecord(t"Price.RespecBase").Value());
    let singlePerkPrice: Int32 = Cast<Int32>(
        TweakDBInterface.GetConstantStatModifierRecord(t"Price.RespecSinglePerk").Value()
    );
    let cost: Int32 = basePrice + singlePerkPrice * (this.GetSpentPerkPoints() + this.GetSpentTraitPoints());

    if !IsDefined(this.aioRespecCost) {
        this.aioRespecCost = new AIORespecCost();
    }

    cost = this.aioRespecCost.NewRespecCost(cost);

    return cost;
}
