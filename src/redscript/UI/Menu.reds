module AIOMultiplier.UI

public class RespecCostSettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-NoRespecCost")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-NoRespecCost")
    let noRespecCost: Bool = false;
}

public class DevPointsQuantitySettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-EnableDevPointsPerLevel")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-EnableDevPointsPerLevel")
    let enableDevPointsPerLevel: Bool = false;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-AttributePointsPerLevel")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-AttributePointsPerLevel")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "50")
    let attributePointsPerLevel: Int32 = 1;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-PerkPointsPerLevel")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-PerkPointsPerLevel")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "50")
    let perkPointsPerLevel: Int32 = 1;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-EnablePerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-EnablePerkPointsOnSkillLevelUp")
    let enablePerkPointsOnSkillLevelUp: Bool = false;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-DevPoints")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-PerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-PerkPointsOnSkillLevelUp")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "20")
    let perkPointsOnSkillLevelUp: Int32 = 1;
}

public class MoneyMultiplierSettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-moneyMult")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-moneyMult")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierMoney: Float = 1.0;
}

public class DisassembledItemsMultiplierSettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-disassembledMult")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-disassembledMult")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierDisassembled: Float = 1.0;
}

public class PlayerExperienceModSettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-playerExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multLevel")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multLevel")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierLevel: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-playerExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multStreetCred")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multStreetCred")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierStreetCred: Float = 1.0;
}

public class SkillsExperienceModSettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-useFlexXP")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-useFlexXP")
    let useFlexXP: Bool = true;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multFlex")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multFlex")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierFlex: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multAssault")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multAssault")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierAssault: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multAthletics")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multAthletics")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierAthletics: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multBrawling")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multBrawling")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierBrawling: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multColdBlood")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multColdBlood")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierColdBlood: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multCombatHacking")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multCombatHacking")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierCombatHacking: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multCrafting")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multCrafting")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierCrafting: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multDemolition")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multDemolition")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierDemolition: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multEngineering")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multEngineering")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierEngineering: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multGunslinger")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multGunslinger")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierGunslinger: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multHacking")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multHacking")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierHacking: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multKenjutsu")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multKenjutsu")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierKenjutsu: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multStealth")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multStealth")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierStealth: Float = 1.0;
}
