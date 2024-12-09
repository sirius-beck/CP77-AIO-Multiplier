module AIOMultiplier.Experience

public class AIOPlayerExperienceSettings {
    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-playerExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multLevel")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multLevel")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierLevel: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-playerExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multStreetCred")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multStreetCred")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierStreetCred: Float = 1.0;
}

public class AIOSkillsExperienceSettings {
    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-useFlexXP")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-useFlexXP")
    let useFlexXP: Bool = true;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multFlex")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multFlex")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierFlex: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multAssault")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multAssault")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierAssault: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multAthletics")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multAthletics")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierAthletics: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multBrawling")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multBrawling")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierBrawling: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multColdBlood")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multColdBlood")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierColdBlood: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multCombatHacking")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multCombatHacking")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierCombatHacking: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multCrafting")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multCrafting")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierCrafting: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multDemolition")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multDemolition")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierDemolition: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multEngineering")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multEngineering")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierEngineering: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multGunslinger")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multGunslinger")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierGunslinger: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multHacking")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multHacking")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierHacking: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multKenjutsu")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multKenjutsu")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierKenjutsu: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-multStealth")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-multStealth")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierStealth: Float = 1.0;
}
