import ExperienceManager.UI.PlayerExperienceModSettings
import ExperienceManager.UI.SkillsExperienceModSettings

@replaceMethod(PlayerDevelopmentData)
public final const func AddExperience(amount: Int32, type: gamedataProficiencyType, telemetryGainReason: telemetryLevelGainReason) -> Void {
  let awardedAmount: Int32;
  let proficiencyProgress: ref<ProficiencyProgressEvent>;
  let reqExp: Int32;
  let telemetryEvt: TelemetryLevelGained;
  let pIndex: Int32 = this.GetProficiencyIndexByType(type);

  // Get the xp amount with multiplier
  amount = EM_XPMultiplier.GetNewXPAmount(amount, type);

  if pIndex >= 0 && !this.IsProficiencyMaxLvl(type) {
    while amount > 0 && !this.IsProficiencyMaxLvl(type) {
      reqExp = this.GetRemainingExpForLevelUp(type);
      if amount - reqExp >= 0 {
        awardedAmount += reqExp;
        amount -= reqExp;
        this.m_proficiencies[pIndex].currentExp += reqExp;
        this.m_proficiencies[pIndex].expToLevel = this.GetRemainingExpForLevelUp(type);
        if this.CanGainNextProficiencyLevel(pIndex) {
          this.ModifyProficiencyLevel(type);
          this.UpdateUIBB();
          if this.m_owner.IsPlayerControlled() && NotEquals(telemetryGainReason, telemetryLevelGainReason.Ignore) {
            telemetryEvt.playerPuppet = this.m_owner;
            telemetryEvt.proficiencyType = type;
            telemetryEvt.proficiencyValue = this.m_proficiencies[pIndex].currentLevel;
            telemetryEvt.isDebugEvt = Equals(telemetryGainReason, telemetryLevelGainReason.IsDebug);
            telemetryEvt.perkPointsAwarded = this.GetDevPointsForLevel(this.m_proficiencies[pIndex].currentLevel, type, gamedataDevelopmentPointType.Primary);
            telemetryEvt.attributePointsAwarded = this.GetDevPointsForLevel(this.m_proficiencies[pIndex].currentLevel, type, gamedataDevelopmentPointType.Attribute);
            GameInstance.GetTelemetrySystem(this.m_owner.GetGame()).LogLevelGained(telemetryEvt);
          };
        } else {
          return;
        };
      } else {
        this.m_proficiencies[pIndex].currentExp += amount;
        this.m_proficiencies[pIndex].expToLevel = this.GetRemainingExpForLevelUp(type);
        awardedAmount += amount;
        amount -= amount;
      };
    };
    if awardedAmount > 0 {
      if this.m_displayActivityLog {
        if Equals(type, gamedataProficiencyType.StreetCred) && GameInstance.GetQuestsSystem(this.m_owner.GetGame()).GetFact(n"street_cred_tutorial") == 0 && GameInstance.GetQuestsSystem(this.m_owner.GetGame()).GetFact(n"disable_tutorials") == 0 && Equals(telemetryGainReason, telemetryLevelGainReason.Gameplay) && GameInstance.GetQuestsSystem(this.m_owner.GetGame()).GetFact(n"q001_show_sts_tut") > 0 {
          GameInstance.GetQuestsSystem(this.m_owner.GetGame()).SetFact(n"street_cred_tutorial", 1);
        };
      };
      proficiencyProgress = new ProficiencyProgressEvent();
      proficiencyProgress.type = type;
      proficiencyProgress.expValue = this.GetCurrentLevelProficiencyExp(type);
      proficiencyProgress.delta = awardedAmount;
      proficiencyProgress.remainingXP = this.GetRemainingExpForLevelUp(type);
      proficiencyProgress.currentLevel = this.GetProficiencyLevel(type);
      proficiencyProgress.isLevelMaxed = this.GetProficiencyLevel(type) + 1 == this.GetProficiencyAbsoluteMaxLevel(type);
      GameInstance.GetUISystem(this.m_owner.GetGame()).QueueEvent(proficiencyProgress);
      if Equals(type, gamedataProficiencyType.Level) {
        this.UpdatePlayerXP();
      };
    };
  };
}

public struct EM_XPMultiplayerSettings {
  public let useFlexXP: Bool;
  public let multiplierFlex: Float;
  public let multiplierLevel: Float;
  public let multiplierStreetCred: Float;
  public let multiplierAssault: Float;
  public let multiplierAthletics: Float;
  public let multiplierBrawling: Float;
  public let multiplierColdBlood: Float;
  public let multiplierCombatHacking: Float;
  public let multiplierCrafting: Float;
  public let multiplierDemolition: Float;
  public let multiplierEngineering: Float;
  public let multiplierGunslinger: Float;
  public let multiplierHacking: Float;
  public let multiplierKenjutsu: Float;
  public let multiplierStealth: Float;
}

public class EM_XPMultiplier {
  private static func GetMultiplierValue(amount: Int32, type: gamedataProficiencyType) -> Float {
    let settings: EM_XPMultiplayerSettings;
    let xpMultiplier: Float;
    let playerExperienceModSettings = new PlayerExperienceModSettings();
    let skillsExperienceModSettings = new SkillsExperienceModSettings();

    // Multiplier values ​​for each of the skills
    // To use the same value for all skills -> settings.useFlexXP = true;
    settings.multiplierLevel = playerExperienceModSettings.multiplierLevel;
    settings.multiplierStreetCred = playerExperienceModSettings.multiplierStreetCred;
    settings.useFlexXP = skillsExperienceModSettings.useFlexXP;
    settings.multiplierFlex = skillsExperienceModSettings.multiplierFlex;
    settings.multiplierAssault = skillsExperienceModSettings.multiplierAssault;
    settings.multiplierAthletics = skillsExperienceModSettings.multiplierAthletics;
    settings.multiplierBrawling = skillsExperienceModSettings.multiplierBrawling;
    settings.multiplierColdBlood = skillsExperienceModSettings.multiplierColdBlood;
    settings.multiplierCombatHacking = skillsExperienceModSettings.multiplierCombatHacking;
    settings.multiplierCrafting = skillsExperienceModSettings.multiplierCrafting;
    settings.multiplierDemolition = skillsExperienceModSettings.multiplierDemolition;
    settings.multiplierEngineering = skillsExperienceModSettings.multiplierEngineering;
    settings.multiplierGunslinger = skillsExperienceModSettings.multiplierGunslinger;
    settings.multiplierHacking = skillsExperienceModSettings.multiplierHacking;
    settings.multiplierKenjutsu = skillsExperienceModSettings.multiplierKenjutsu;
    settings.multiplierStealth = skillsExperienceModSettings.multiplierStealth;

    if (settings.useFlexXP) {
      switch type {
        case gamedataProficiencyType.Level: xpMultiplier = settings.multiplierLevel;
        case gamedataProficiencyType.StreetCred: xpMultiplier = settings.multiplierStreetCred;
        default: xpMultiplier = settings.multiplierFlex;
      }
    } else {
      switch type {
        case gamedataProficiencyType.Level: xpMultiplier = settings.multiplierLevel;
        case gamedataProficiencyType.StreetCred: xpMultiplier = settings.multiplierStreetCred;
        case gamedataProficiencyType.Assault: xpMultiplier = settings.multiplierAssault;
        case gamedataProficiencyType.Athletics: xpMultiplier = settings.multiplierAthletics;
        case gamedataProficiencyType.Brawling: xpMultiplier = settings.multiplierBrawling;
        case gamedataProficiencyType.ColdBlood: xpMultiplier = settings.multiplierColdBlood;
        case gamedataProficiencyType.CombatHacking: xpMultiplier = settings.multiplierCombatHacking;
        case gamedataProficiencyType.Crafting: xpMultiplier = settings.multiplierCrafting;
        case gamedataProficiencyType.Demolition: xpMultiplier = settings.multiplierDemolition;
        case gamedataProficiencyType.Engineering: xpMultiplier = settings.multiplierEngineering;
        case gamedataProficiencyType.Gunslinger: xpMultiplier = settings.multiplierGunslinger;
        case gamedataProficiencyType.Hacking: xpMultiplier = settings.multiplierHacking;
        case gamedataProficiencyType.Kenjutsu: xpMultiplier = settings.multiplierKenjutsu;
        case gamedataProficiencyType.Stealth: xpMultiplier = settings.multiplierStealth;
        default: xpMultiplier = 1.0;
      }
    }

    return xpMultiplier;
  }

  public static func GetNewXPAmount(amount: Int32, type: gamedataProficiencyType) -> Int32 {
    let xpValue: Int32 = Cast<Int32>(Cast<Float>(amount) * EM_XPMultiplier.GetMultiplierValue(amount, type));

    return xpValue;
  }
}
