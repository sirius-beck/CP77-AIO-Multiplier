import AIOMultiplier.UI.DevPointsQuantitySettings

@addMethod(PlayerSystem)
private final func GetCurrentTotalSkillLevel() -> Int32 {
    let game: GameInstance = this.GetGameInstance();
    let player: ref<PlayerPuppet> = GetPlayer(game);
    let skillLevel: Int32;
    let totalSkillLevel: Int32 = 0;

    let i: Int32 = 0;
    while i <= EnumInt(gamedataProficiencyType.Count) {
        let currentSkill: gamedataProficiencyType = IntEnum<gamedataProficiencyType>(i);

        if NotEquals(currentSkill, gamedataProficiencyType.Level) && NotEquals(currentSkill, gamedataProficiencyType.StreetCred) {
            skillLevel = (GameInstance.GetScriptableSystemsContainer(game).Get(n"PlayerDevelopmentSystem") as PlayerDevelopmentSystem).GetProficiencyLevel(player, currentSkill);
            totalSkillLevel += skillLevel;
        }

        i += 1;
    }

    return totalSkillLevel;
}

@addField(PlayerDevelopmentData)
private let aioDevPoints: ref<AIODevPoints>;

@replaceMethod(PlayerDevelopmentData)
private final const func ModifyDevPoints(type: gamedataProficiencyType, level: Int32) -> Void {
    let val: Int32;
    let i: Int32 = 0;

    if !IsDefined(this.aioDevPoints) {
        this.aioDevPoints = new AIODevPoints();
    }
    this.aioDevPoints.SetupSettings();

    while i <= EnumInt(gamedataDevelopmentPointType.Count) {
        let pointType: gamedataDevelopmentPointType = IntEnum<gamedataDevelopmentPointType>(i);

        val = this.GetDevPointsForLevel(level, type, pointType);

        val = this.aioDevPoints.SetNewValue(val, type, pointType);
        
        if this.aioDevPoints.IsSkillLevelUp(type) && this.aioDevPoints.PerkPointsPerSkillLevelIsEnabled() {
            let totalSkillLevel: Int32 = PlayerSystem.GetCurrentTotalSkillLevel();
            let totalSkillLevelRemaining: Int32 = 240 - totalSkillLevel;
            let skillLevelUpToObtainPerkPoints: Int32 = this.aioDevPoints.GetSkillLevelUpToObtainPerkPoints();

            if totalSkillLevelRemaining < skillLevelUpToObtainPerkPoints {
                skillLevelUpToObtainPerkPoints = totalSkillLevelRemaining;
            }

            if totalSkillLevel % skillLevelUpToObtainPerkPoints == 0 {
                this.AddDevelopmentPoints(val, pointType);
            }
        } else {
            if val > 0 {
            this.AddDevelopmentPoints(val, pointType);
            };
        }
        i += 1;
    };
}

public class AIODevPoints {
    public let devPointsQuantitySettings: ref<DevPointsQuantitySettings>;

    private func SetupSettings() -> Void {
        this.devPointsQuantitySettings = new DevPointsQuantitySettings();
    }

    private func SetNewValue(oldValue: Int32, proficiencyType: gamedataProficiencyType, pointType: gamedataDevelopmentPointType) -> Int32 {
        if this.IsSkillLevelUp(proficiencyType) {
            return AIODevPoints.GetPerkPointsPerSkillLevel(oldValue);
        } else {
            if Equals(pointType, gamedataDevelopmentPointType.Attribute) {
                return AIODevPoints.GetPointsPerLevel(oldValue, "attributePointsPerLevel");
            } else {
                return AIODevPoints.GetPointsPerLevel(oldValue, "perkPointsPerLevel");
            }
        }

        return oldValue;
    }

    private func IsSkillLevelUp(proficiencyType: gamedataProficiencyType) -> Bool {
        if Equals(proficiencyType, gamedataProficiencyType.Level) || Equals(proficiencyType, gamedataProficiencyType.StreetCred) {
            return false;
        } else {
            return true;
        }

        return false;
    }

    private func DevPointsPerLevelIsEnabled() -> Bool {
        return this.devPointsQuantitySettings.enableDevPointsPerLevel;
    }

    private func GetPointsPerLevel(oldValue: Int32, type: String) -> Int32 {
        if this.DevPointsPerLevelIsEnabled() {
            switch type{
                case "attributePointsPerLevel": return this.devPointsQuantitySettings.attributePointsPerLevel;
                case "perkPointsPerLevel": return this.devPointsQuantitySettings.perkPointsPerLevel;
            }
        } else {
            return oldValue;
        }
        
    }

    private func PerkPointsPerSkillLevelIsEnabled() -> Bool {
        return this.devPointsQuantitySettings.enablePerkPointsPerSkillLevel;
    }

    private func GetSkillLevelUpToObtainPerkPoints() -> Int32 {
        return this.devPointsQuantitySettings.skillLevelUpToObtainPerkPoints;
    }

    private func GetPerkPointsPerSkillLevel(oldValue: Int32) -> Int32 {
        if this.PerkPointsPerSkillLevelIsEnabled() {
            return this.devPointsQuantitySettings.perkPointsPerCustomSkillLevel;
        } else {
            return oldValue;
        }
    }
}
