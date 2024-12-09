module AIOMultiplier.RespecCost

public class AIORespecCostSettings {
    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-NoRespecCost")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-NoRespecCost")
    let noRespecCost: Bool = false;
}
