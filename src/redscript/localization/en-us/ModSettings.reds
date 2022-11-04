
module ExperienceManager.UI

public class RespecModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Respec Cost")
  @runtimeProperty("ModSettings.displayName", "No Respec Cost")
  @runtimeProperty("ModSettings.description", "There will be no cost to reset skill points. The value in the multiplier below will be ignored.")
  let freeRespecCost: Bool = false;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Respec Cost")
  @runtimeProperty("ModSettings.displayName", "Multiplier")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierRespecCost: Float = 1.0;
}

public class PlayerExperienceModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Player")
  @runtimeProperty("ModSettings.displayName", "Level")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierLevel: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Player")
  @runtimeProperty("ModSettings.displayName", "Street Cred")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStreetCred: Float = 1.0;
}

public class SkillsExperienceModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Use flex XP")
  @runtimeProperty("ModSettings.description", "The experience gained for the level and all player skills will share the same multiplier.")
  let useFlexXP: Bool = true;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Flex Multiplier")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierFlex: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Assault")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAssault: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Athletics")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAthletics: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Brawling")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierBrawling: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Cold Blood")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierColdBlood: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Combat Hacking")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCombatHacking: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Crafting")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCrafting: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Demolition")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierDemolition: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Engineering")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierEngineering: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Gunslinger")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierGunslinger: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Hacking")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierHacking: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Kenjutsu")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierKenjutsu: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experience - Skills")
  @runtimeProperty("ModSettings.displayName", "Stealth")
  @runtimeProperty("ModSettings.description", "The experience gained will be multiplied by the value of this field.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStealth: Float = 1.0;
}
