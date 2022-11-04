
module ExperienceManager.UI

public class RespecModSettings {
  let texto: String = "Texto";
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-respec-cost")
  @runtimeProperty("ModSettings.displayName", "em-settings-NoRespecCost")
  @runtimeProperty("ModSettings.description", "em-settings-NoRespecCost-desc")
  let freeRespecCost: Bool = false;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-respec-cost")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-RespecCost")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-RespecCost-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierRespecCost: Float = 1.0;
}

public class PlayerExperienceModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-PlayerExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Level")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Level-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierLevel: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-PlayerExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-StreetCred")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-StreetCred-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStreetCred: Float = 1.0;
}

public class SkillsExperienceModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-useFlexXP")
  @runtimeProperty("ModSettings.description", "em-settings-useFlexXP-desc")
  let useFlexXP: Bool = true;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Flex")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Flex-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierFlex: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Assault")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Assault-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAssault: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Athletics")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Athletics-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAthletics: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Brawling")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Brawling-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierBrawling: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-ColdBlood")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-ColdBlood-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierColdBlood: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-CombatHacking")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-CombatHacking-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCombatHacking: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Crafting")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Crafting-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCrafting: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Demolition")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Demolition-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierDemolition: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Engineering")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Engineering-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierEngineering: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Gunslinger")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Gunslinger-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierGunslinger: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Hacking")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Hacking-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierHacking: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Kenjutsu")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Kenjutsu-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierKenjutsu: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "em-settings-category-SkillsExperience")
  @runtimeProperty("ModSettings.displayName", "em-settings-multiplier-Stealth")
  @runtimeProperty("ModSettings.description", "em-settings-multiplier-Stealth-desc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStealth: Float = 1.0;
}
