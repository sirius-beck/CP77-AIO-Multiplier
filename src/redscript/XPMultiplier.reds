import AIOMultiplier.UI.PlayerExperienceModSettings
import AIOMultiplier.UI.SkillsExperienceModSettings
// import AIOMultiplier.Notifications.*

@replaceMethod(PlayerDevelopmentData)
public final const func AddExperience(amount: Int32, type: gamedataProficiencyType, telemetryGainReason: telemetryLevelGainReason) -> Void {
    let awardedAmount: Int32;
    let proficiencyProgress: ref<ProficiencyProgressEvent>;
    let reqExp: Int32;
    let telemetryEvt: TelemetryLevelGained;
    let pIndex: Int32 = this.GetProficiencyIndexByType(type);

    // Get the xp amount with multiplier
    amount = AIOXPMultiplier.NewXPAmount(amount, type);

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

public class AIOXPMultiplier {
    private static func GetMultiplier(type: gamedataProficiencyType) -> Float {
        let playerExperienceModSettings = new PlayerExperienceModSettings();
        let skillsExperienceModSettings = new SkillsExperienceModSettings();

        if (skillsExperienceModSettings.useFlexXP) {
            switch type {
                case gamedataProficiencyType.Level: return playerExperienceModSettings.multiplierLevel;
                case gamedataProficiencyType.StreetCred: return playerExperienceModSettings.multiplierStreetCred;
                case gamedataProficiencyType.Assault: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Athletics: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Brawling: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.ColdBlood: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.CombatHacking: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Crafting: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Demolition: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Engineering: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Gunslinger: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Hacking: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Kenjutsu: return skillsExperienceModSettings.multiplierFlex;
                case gamedataProficiencyType.Stealth: return skillsExperienceModSettings.multiplierFlex;
                default: return 1.0;
            }
        } else {
            switch type {
                case gamedataProficiencyType.Level: return playerExperienceModSettings.multiplierLevel;
                case gamedataProficiencyType.StreetCred: return playerExperienceModSettings.multiplierStreetCred;
                case gamedataProficiencyType.Assault: return skillsExperienceModSettings.multiplierAssault;
                case gamedataProficiencyType.Athletics: return skillsExperienceModSettings.multiplierAthletics;
                case gamedataProficiencyType.Brawling: return skillsExperienceModSettings.multiplierBrawling;
                case gamedataProficiencyType.ColdBlood: return skillsExperienceModSettings.multiplierColdBlood;
                case gamedataProficiencyType.CombatHacking: return skillsExperienceModSettings.multiplierCombatHacking;
                case gamedataProficiencyType.Crafting: return skillsExperienceModSettings.multiplierCrafting;
                case gamedataProficiencyType.Demolition: return skillsExperienceModSettings.multiplierDemolition;
                case gamedataProficiencyType.Engineering: return skillsExperienceModSettings.multiplierEngineering;
                case gamedataProficiencyType.Gunslinger: return skillsExperienceModSettings.multiplierGunslinger;
                case gamedataProficiencyType.Hacking: return skillsExperienceModSettings.multiplierHacking;
                case gamedataProficiencyType.Kenjutsu: return skillsExperienceModSettings.multiplierKenjutsu;
                case gamedataProficiencyType.Stealth: return skillsExperienceModSettings.multiplierStealth;
                default: return 1.0;
            }
        }
    }

    public static func NewXPAmount(amount: Int32, type: gamedataProficiencyType) -> Int32 {
        let xpValue: Int32 = Cast<Int32>(Cast<Float>(amount) * AIOXPMultiplier.GetMultiplier(type));

        return xpValue;
    }

    // private func ShowNotification(msg: String) -> Void {
    //     let aioNotificationSystem = new AIONotificationSystem();

    //     aioNotificationSystem.ShowNotification(msg);
    // }
}
