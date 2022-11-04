
module ExperienceManager.UI

public class RespecModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-respecCost")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-NoRespecCost")
  @runtimeProperty("ModSettings.description", "em-ms-desc-NoRespecCost")
  let freeRespecCost: Bool = false;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-respecCost")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multRespecCost")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multRespecCost")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierRespecCost: Float = 1.0;
}

public class PlayerExperienceModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-playerExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multLevel")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multLevel")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierLevel: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-playerExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multStreetCred")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multStreetCred")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStreetCred: Float = 1.0;
}

public class SkillsExperienceModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-useFlexXP")
  @runtimeProperty("ModSettings.description", "em-ms-desc-useFlexXP")
  let useFlexXP: Bool = true;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multFlex")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multFlex")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierFlex: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multAssault")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multAssault")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAssault: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multAthletics")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multAthletics")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAthletics: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multBrawling")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multBrawling")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierBrawling: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multColdBlood")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multColdBlood")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierColdBlood: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multCombatHacking")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multCombatHacking")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCombatHacking: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multCrafting")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multCrafting")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCrafting: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multDemolition")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multDemolition")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierDemolition: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multEngineering")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multEngineering")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierEngineering: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multGunslinger")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multGunslinger")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierGunslinger: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multHacking")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multHacking")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierHacking: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multKenjutsu")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multKenjutsu")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierKenjutsu: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-ms-category-skillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-ms-displayName-multStealth")
  @runtimeProperty("ModSettings.description", "em-ms-desc-multStealth")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStealth: Float = 1.0;
}
