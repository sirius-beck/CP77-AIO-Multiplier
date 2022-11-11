import AIOMultiplier.UI.DevPointsQuantitySettings

@addField(PlayerDevelopmentData)
private let aioDevPoints: ref<AIODevPoints>;

@replaceMethod(PlayerDevelopmentData)
private final const func ModifyDevPoints(type: gamedataProficiencyType, level: Int32) -> Void {
    let val: Int32;

    if !IsDefined(this.aioDevPoints) {
        this.aioDevPoints = new AIODevPoints();
    }

    let i: Int32 = 0;
    while i <= EnumInt(gamedataDevelopmentPointType.Count) {
        val = this.GetDevPointsForLevel(level, type, IntEnum<gamedataDevelopmentPointType>(i));

        val = this.aioDevPoints.SetNewValue(val, IntEnum<gamedataDevelopmentPointType>(i), type);
        
        if val > 0 {
            this.AddDevelopmentPoints(val, IntEnum<gamedataDevelopmentPointType>(i));
        };
        i += 1;
    };
}

public class AIODevPoints {
    private func SetNewValue(oldValue: Int32, pointType: gamedataDevelopmentPointType, proficiencyType: gamedataProficiencyType) -> Int32 {
        if this.IsSkillLevelUp(proficiencyType) {
            return this.GetPointsValue(oldValue, 3, proficiencyType);
        } else {
            if Equals(pointType, gamedataDevelopmentPointType.Attribute) {
                return this.GetPointsValue(oldValue, 1, proficiencyType);
            } else {
                return this.GetPointsValue(oldValue, 2, proficiencyType);
            }
        }
    }

    private func IsSkillLevelUp(proficiencyType: gamedataProficiencyType) -> Bool {
        if Equals(proficiencyType, gamedataProficiencyType.Level) || Equals(proficiencyType, gamedataProficiencyType.StreetCred) {
            return false;
        } else {
            return true;
        }
    }

    private func GetPointsValue(oldValue: Int32, type: Int32, proficiencyType: gamedataProficiencyType) -> Int32 {
        let devPointsQuantitySettings = new DevPointsQuantitySettings();
        
        if devPointsQuantitySettings.enableDevPointsPerLevel {
            switch type{
                case 1: return devPointsQuantitySettings.attributePointsPerLevel;
                case 2: return devPointsQuantitySettings.perkPointsPerLevel;
                case 3: return this.GetPerkPointsOnSkillLevelUp(oldValue, proficiencyType);
                default: return oldValue;
            }
        } else {
            return oldValue;
        }
    }

    private func GetPerkPointsOnSkillLevelUp(oldValue: Int32, proficiencyType: gamedataProficiencyType) -> Int32 {
        let devPointsQuantitySettings = new DevPointsQuantitySettings();
        let newValue: Int32 = devPointsQuantitySettings.perkPointsOnSkillLevelUp;

        if devPointsQuantitySettings.enablePerkPointsOnSkillLevelUp {
            return newValue;
        } else {
            return oldValue;
        }
    }
}
