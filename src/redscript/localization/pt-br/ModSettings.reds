
module ExperienceManager.UI

public class RespecModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Custo de Respeito")
  @runtimeProperty("ModSettings.displayName", "Sem Custo de Respeito")
  @runtimeProperty("ModSettings.description", "Não haverá custo para redefinir os pontos de habilidade. O valor no multiplicador abaixo será ignorado.")
  let freeRespecCost: Bool = false;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Custo de Respeito")
  @runtimeProperty("ModSettings.displayName", "Multiplicador")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierRespecCost: Float = 1.0;
}

public class PlayerExperienceModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Jogador")
  @runtimeProperty("ModSettings.displayName", "Level")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierLevel: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Jogador")
  @runtimeProperty("ModSettings.displayName", "Credibilidade")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStreetCred: Float = 1.0;
}

public class SkillsExperienceModSettings {
  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Usar Flex XP")
  @runtimeProperty("ModSettings.description", "A experiência adquirida para todas as skills do jogador compartilharão o mesmo multiplicador.")
  let useFlexXP: Bool = true;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Multiplicador Flex")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierFlex: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Assalto")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAssault: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Atletismo")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierAthletics: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Briga")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierBrawling: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Sangue frio")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierColdBlood: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Hack de Combate")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCombatHacking: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Arte")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierCrafting: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Demolição")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierDemolition: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Engenharia")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierEngineering: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Atirador")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierGunslinger: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Hackear")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierHacking: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Kenjutsu")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierKenjutsu: Float = 1.0;

  @runtimeProperty("ModSettings.mod", "Experience Manager")
  @runtimeProperty("ModSettings.category", "Experiência - Habilidades")
  @runtimeProperty("ModSettings.displayName", "Furtividade")
  @runtimeProperty("ModSettings.description", "A experiência adquirida será multiplicada pelo valor deste campo.")
  @runtimeProperty("ModSettings.step", "0.5")
  @runtimeProperty("ModSettings.min", "0.5")
  @runtimeProperty("ModSettings.max", "100.0")
  let multiplierStealth: Float = 1.0;
}
