import EM_ModSettings.Mod.*

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
    let xp_modsettings: EM_ModSettings;

    // Multiplier values ​​for each of the skills
    // To use the same value for all skills -> settings.useFlexXP = true;
    settings.useFlexXP = xp_modsettings.useFlexXP;
    settings.multiplierFlex = xp_modsettings.multiplierFlex;
    settings.multiplierLevel = xp_modsettings.multiplierLevel;
    settings.multiplierStreetCred = xp_modsettings.multiplierStreetCred;
    settings.multiplierAssault = xp_modsettings.multiplierAssault;
    settings.multiplierAthletics = xp_modsettings.multiplierAthletics;
    settings.multiplierBrawling = xp_modsettings.multiplierBrawling;
    settings.multiplierColdBlood = xp_modsettings.multiplierColdBlood;
    settings.multiplierCombatHacking = xp_modsettings.multiplierCombatHacking;
    settings.multiplierCrafting = xp_modsettings.multiplierCrafting;
    settings.multiplierDemolition = xp_modsettings.multiplierDemolition;
    settings.multiplierEngineering = xp_modsettings.multiplierEngineering;
    settings.multiplierGunslinger = xp_modsettings.multiplierGunslinger;
    settings.multiplierHacking = xp_modsettings.multiplierHacking;
    settings.multiplierKenjutsu = xp_modsettings.multiplierKenjutsu;
    settings.multiplierStealth = xp_modsettings.multiplierStealth;

    if (settings.useFlexXP) {
      xpMultiplier = settings.multiplierFlex;
    } else {
      switch type {
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
        case gamedataProficiencyType.Level: xpMultiplier = settings.multiplierLevel;
        case gamedataProficiencyType.Stealth: xpMultiplier = settings.multiplierStealth;
        case gamedataProficiencyType.StreetCred: xpMultiplier = settings.multiplierStreetCred;
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
