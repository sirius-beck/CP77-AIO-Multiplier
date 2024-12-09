module AIOMultiplier.Money

public class AIOMoneySettings {
    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-moneyMult")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-moneyMult")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierMoney: Float = 1.0;
}
