import AIOMultiplier.UI.PlayerExperienceModSettings
import AIOMultiplier.UI.SkillsExperienceModSettings

@replaceMethod(PlayerDevelopmentData)
public final const func AddExperience(amount: Int32, type: gamedataProficiencyType, telemetryGainReason: telemetryLevelGainReason) -> Void {
  let awardedAmount: Int32;
  let proficiencyProgress: ref<ProficiencyProgressEvent>;
  let reqExp: Int32;
  let telemetryEvt: TelemetryLevelGained;
  let pIndex: Int32 = this.GetProficiencyIndexByType(type);

  // Get the xp amount with multiplier
  amount = EM_XPMultiplier.NewXPAmount(amount, type);

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

public class EM_XPMultiplier {
  private static func GetMultiplier(amount: Int32, type: gamedataProficiencyType) -> Float {
    let xpMultiplier: Float;
    let playerExperience = new PlayerExperienceModSettings();
    let skillsExperience = new SkillsExperienceModSettings();

    if (skillsExperience.useFlexXP) {
      switch type {
        case gamedataProficiencyType.Level: xpMultiplier = playerExperience.multiplierLevel;
        case gamedataProficiencyType.StreetCred: xpMultiplier = playerExperience.multiplierStreetCred;
        case gamedataProficiencyType.Assault: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Athletics: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Brawling: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.ColdBlood: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.CombatHacking: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Crafting: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Demolition: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Engineering: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Gunslinger: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Hacking: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Kenjutsu: xpMultiplier = skillsExperience.multiplierFlex;
        case gamedataProficiencyType.Stealth: xpMultiplier = skillsExperience.multiplierFlex;
        default: xpMultiplier = 1.0;
      }
    } else {
      switch type {
        case gamedataProficiencyType.Level: xpMultiplier = playerExperience.multiplierLevel;
        case gamedataProficiencyType.StreetCred: xpMultiplier = playerExperience.multiplierStreetCred;
        case gamedataProficiencyType.Assault: xpMultiplier = skillsExperience.multiplierAssault;
        case gamedataProficiencyType.Athletics: xpMultiplier = skillsExperience.multiplierAthletics;
        case gamedataProficiencyType.Brawling: xpMultiplier = skillsExperience.multiplierBrawling;
        case gamedataProficiencyType.ColdBlood: xpMultiplier = skillsExperience.multiplierColdBlood;
        case gamedataProficiencyType.CombatHacking: xpMultiplier = skillsExperience.multiplierCombatHacking;
        case gamedataProficiencyType.Crafting: xpMultiplier = skillsExperience.multiplierCrafting;
        case gamedataProficiencyType.Demolition: xpMultiplier = skillsExperience.multiplierDemolition;
        case gamedataProficiencyType.Engineering: xpMultiplier = skillsExperience.multiplierEngineering;
        case gamedataProficiencyType.Gunslinger: xpMultiplier = skillsExperience.multiplierGunslinger;
        case gamedataProficiencyType.Hacking: xpMultiplier = skillsExperience.multiplierHacking;
        case gamedataProficiencyType.Kenjutsu: xpMultiplier = skillsExperience.multiplierKenjutsu;
        case gamedataProficiencyType.Stealth: xpMultiplier = skillsExperience.multiplierStealth;
        default: xpMultiplier = 1.0;
      }
    }

    return xpMultiplier;
  }

  public static func NewXPAmount(amount: Int32, type: gamedataProficiencyType) -> Int32 {
    let xpValue: Int32 = Cast<Int32>(Cast<Float>(amount) * EM_XPMultiplier.GetMultiplier(amount, type));

    return xpValue;
  }
}
