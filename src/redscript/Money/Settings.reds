module AIOMultiplier.Money

public class AIOMoneySettings {
    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-moneyMult")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-moneyMult")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierMoney: Float = 1.0;
}
