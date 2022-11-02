module EM_ModSettings.Mod

public class EM_RespecModSettings extends IScriptable {

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-respecCostCat")
  @runtimeProperty("ModSettings.displayName", "str-freeRespecCost")
  @runtimeProperty("ModSettings.description", "str-freeRespecCostDesc")
  let freeRespecCost: Bool = false;

  @if(!freeRespecCost)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-respecCostCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierRespecCost")
  @runtimeProperty("ModSettings.description", "str-multiplierRespecCostDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierRespecCost: Float = 1.0;
}

public class EM_ExperienceModSettings extends IScriptable{
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-useFlexXP")
  @runtimeProperty("ModSettings.description", "str-useFlexXPDesc")
  let useFlexXP: Bool = true;

  @if(useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierFlex")
  @runtimeProperty("ModSettings.description", "str-multiplierFlexDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierFlex: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierLevel")
  @runtimeProperty("ModSettings.description", "str-multiplierLevelDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierLevel: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierStreetCred")
  @runtimeProperty("ModSettings.description", "str-multiplierStreetCredDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStreetCred: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierAssault")
  @runtimeProperty("ModSettings.description", "str-multiplierAssaultDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAssault: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierAthletics")
  @runtimeProperty("ModSettings.description", "str-multiplierAthleticsDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAthletics: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierBrawling")
  @runtimeProperty("ModSettings.description", "str-multiplierBrawlingDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierBrawling: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierColdBlood")
  @runtimeProperty("ModSettings.description", "str-multiplierColdBloodDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierColdBlood: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierCombatHacking")
  @runtimeProperty("ModSettings.description", "str-multiplierCombatHackingDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCombatHacking: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierCrafting")
  @runtimeProperty("ModSettings.description", "str-multiplierCraftingDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCrafting: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierDemolition")
  @runtimeProperty("ModSettings.description", "str-multiplierDemolitionDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierDemolition: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierEngineering")
  @runtimeProperty("ModSettings.description", "str-multiplierEngineeringDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierEngineering: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierGunslinger")
  @runtimeProperty("ModSettings.description", "str-multiplierGunslingerDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierGunslinger: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierHacking")
  @runtimeProperty("ModSettings.description", "str-multiplierHackingDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierHacking: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierKenjutsu")
  @runtimeProperty("ModSettings.description", "str-multiplierKenjutsuDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierKenjutsu: Float = 1.0;

  @if(!useFlexXP)
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "str-ExperienceCat")
  @runtimeProperty("ModSettings.displayName", "str-multiplierStealth")
  @runtimeProperty("ModSettings.description", "str-multiplierStealthDesc")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStealth: Float = 1.0;
}
