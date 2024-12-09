module AIOMultiplier.DevPoints

public class AIODevPointsSettings {
    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-EnableDevPointsPerLevel")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-EnableDevPointsPerLevel")
    let enableDevPointsPerLevel: Bool = false;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-AttributePointsPerLevel")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-AttributePointsPerLevel")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "50")
    let attributePointsPerLevel: Int32 = 1;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-PerkPointsPerLevel")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-PerkPointsPerLevel")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "50")
    let perkPointsPerLevel: Int32 = 1;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-EnablePerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-EnablePerkPointsOnSkillLevelUp")
    let enablePerkPointsOnSkillLevelUp: Bool = false;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-PerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-PerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "20")
    let perkPointsOnSkillLevelUp: Int32 = 1;
}
