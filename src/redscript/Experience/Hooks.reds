module AIOMultiplier.Experience

@addField(PlayerDevelopmentData)
private let aioExperience: ref<AIOExperience>;

@replaceMethod(PlayerDevelopmentData)
public const final func AddExperience(
    amount: Int32,
    type: gamedataProficiencyType,
    telemetryGainReason: telemetryLevelGainReason,
    opt isDebug: Bool
) -> Void {
    let awardedAmount: Int32;
    let proficiencyProgress: ref<ProficiencyProgressEvent>;
    let reqExp: Int32;
    let telemetryEvt: TelemetryLevelGained;
    let pIndex: Int32 = this.GetProficiencyIndexByType(type);

    if !IsDefined(this.aioExperience) {
        this.aioExperience = new AIOExperience();
    }

    amount = this.aioExperience.NewXPAmount(amount, type);

    if pIndex >= 0 && !this.IsProficiencyMaxLvl(type) {
        while amount > 0 && !this.IsProficiencyMaxLvl(type) {
            reqExp = this.GetRemainingExpForLevelUp(type);
            if amount - reqExp >= 0 {
                awardedAmount += reqExp;
                amount -= reqExp;
                this.m_proficiencies[pIndex].currentExp += reqExp;
                this.m_proficiencies[pIndex].expToLevel = this.GetRemainingExpForLevelUp(type);
                if this.CanGainNextProficiencyLevel(pIndex) {
                    this.ModifyProficiencyLevel(type, isDebug);
                    this.UpdateUIBB();
                    if this.m_owner.IsPlayerControlled()
                        && NotEquals(telemetryGainReason, telemetryLevelGainReason.Ignore) {
                        telemetryEvt.playerPuppet = this.m_owner;
                        telemetryEvt.proficiencyType = type;
                        telemetryEvt.proficiencyValue = this.m_proficiencies[pIndex].currentLevel;
                        telemetryEvt.isDebugEvt = Equals(telemetryGainReason, telemetryLevelGainReason.IsDebug);
                        telemetryEvt.perkPointsAwarded = this
                            .GetDevPointsForLevel(
                                this.m_proficiencies[pIndex].currentLevel,
                                type,
                                gamedataDevelopmentPointType.Primary
                            );
                        telemetryEvt.attributePointsAwarded = this
                            .GetDevPointsForLevel(
                                this.m_proficiencies[pIndex].currentLevel,
                                type,
                                gamedataDevelopmentPointType.Attribute
                            );
                        GameInstance
                            .GetTelemetrySystem(this.m_owner.GetGame())
                            .LogLevelGained(telemetryEvt);
                    }
                } else {
                    return;
                }
            } else {
                this.m_proficiencies[pIndex].currentExp += amount;
                this.m_proficiencies[pIndex].expToLevel = this.GetRemainingExpForLevelUp(type);
                awardedAmount += amount;
                amount -= amount;
            }
        }
        if awardedAmount > 0 {
            if this.m_displayActivityLog {
                if Equals(type, gamedataProficiencyType.StreetCred)
                    && GameInstance
                        .GetQuestsSystem(this.m_owner.GetGame())
                        .GetFact(n"street_cred_tutorial") == 0
                    && GameInstance
                        .GetQuestsSystem(this.m_owner.GetGame())
                        .GetFact(n"disable_tutorials") == 0
                    && Equals(telemetryGainReason, telemetryLevelGainReason.Gameplay)
                    && GameInstance
                        .GetQuestsSystem(this.m_owner.GetGame())
                        .GetFact(n"q001_show_sts_tut") > 0 {
                    GameInstance
                        .GetQuestsSystem(this.m_owner.GetGame())
                        .SetFact(n"street_cred_tutorial", 1);
                }
            }
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
            }
        }
    }
}
