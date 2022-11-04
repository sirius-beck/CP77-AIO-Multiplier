
module AIOMultiplier.UI

public class RespecModSettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-respecCost")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-NoRespecCost")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-NoRespecCost")
    let freeRespecCost: Bool = false;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-respecCost")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multRespecCost")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multRespecCost")
    @runtimeProperty("ModSettings.step", "0.1")
    @runtimeProperty("ModSettings.min", "0.1")
    @runtimeProperty("ModSettings.max", "1.0")
    let multiplierRespecCost: Float = 1.0;
}

public class MoneyMultiplierSettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-moneyMult")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-moneyMult")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierEddies: Float = 1.0;
}

public class DevPointsQuantitySettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-EnableDevPointsQuantity")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-EnableDevPointsQuantity")
    let enableDevPointsQuantity: Bool = false;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-MultDevPointsQuantity")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-MultDevPointsQuantity")
    @runtimeProperty("ModSettings.step", "1")
    @runtimeProperty("ModSettings.min", "1")
    @runtimeProperty("ModSettings.max", "20")
    let multiplierDevPointsQuantity: Int32 = 1;
}

public class PlayerExperienceModSettings {
    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-playerExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multLevel")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multLevel")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierLevel: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-playerExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multStreetCred")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multStreetCred")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
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
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierFlex: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multAssault")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multAssault")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierAssault: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multAthletics")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multAthletics")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierAthletics: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multBrawling")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multBrawling")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierBrawling: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multColdBlood")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multColdBlood")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierColdBlood: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multCombatHacking")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multCombatHacking")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierCombatHacking: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multCrafting")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multCrafting")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierCrafting: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multDemolition")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multDemolition")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierDemolition: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multEngineering")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multEngineering")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierEngineering: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multGunslinger")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multGunslinger")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierGunslinger: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multHacking")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multHacking")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierHacking: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multKenjutsu")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multKenjutsu")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierKenjutsu: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "UI-AIO-mod-name")
    @runtimeProperty("ModSettings.category", "UI-AIO-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "UI-AIO-displayName-multStealth")
    @runtimeProperty("ModSettings.description", "UI-AIO-desc-multStealth")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "500.0")
    let multiplierStealth: Float = 1.0;
}
