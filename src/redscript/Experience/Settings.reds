module AIOMultiplier.Experience

public class AIOPlayerExperienceSettings {
    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-playerExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multLevel")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multLevel")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierLevel: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-playerExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multStreetCred")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multStreetCred")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierStreetCred: Float = 1.0;
}

public class AIOSkillsExperienceSettings {
    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-useFlexXP")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-useFlexXP")
    let useFlexXP: Bool = true;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multFlex")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multFlex")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierFlex: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multAssault")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multAssault")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierAssault: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multAthletics")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multAthletics")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierAthletics: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multBrawling")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multBrawling")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierBrawling: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multColdBlood")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multColdBlood")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierColdBlood: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multCombatHacking")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multCombatHacking")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierCombatHacking: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multCrafting")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multCrafting")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierCrafting: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multDemolition")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multDemolition")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierDemolition: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multEngineering")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multEngineering")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierEngineering: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multGunslinger")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multGunslinger")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierGunslinger: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multHacking")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multHacking")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierHacking: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multKenjutsu")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multKenjutsu")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierKenjutsu: Float = 1.0;

    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-skillsExperience")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-multStealth")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-multStealth")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierStealth: Float = 1.0;
}
