module AIOMultiplier.DevPoints

private class AIODevPointsSettings {
    // @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    // @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-DevPoints")
    // @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-NoRespecCost")
    // @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-NoRespecCost")
    // let noRespecCost: Bool = false;
    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-EnableDevPointsPerLevel")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-EnableDevPointsPerLevel")
    let enableDevPointsPerLevel: Bool = false;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-AttributePointsPerLevel")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-AttributePointsPerLevel")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "50")
    let attributePointsPerLevel: Int32 = 1;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-PerkPointsPerLevel")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-PerkPointsPerLevel")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "50")
    let perkPointsPerLevel: Int32 = 1;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-EnablePerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-EnablePerkPointsOnSkillLevelUp")
    let enablePerkPointsOnSkillLevelUp: Bool = false;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-PerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-PerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "20")
    let perkPointsOnSkillLevelUp: Int32 = 1;
}
