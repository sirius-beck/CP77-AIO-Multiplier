import AIOMultiplier.UI.DevPointsQuantitySettings
// import AIOMultiplier.UI.NotificationSystemSettings

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

        val = this.aioDevPoints.SetNewValue(val, IntEnum<gamedataDevelopmentPointType>(i), type, level);
        
        if val > 0 {
            this.AddDevelopmentPoints(val, IntEnum<gamedataDevelopmentPointType>(i));
        };
        i += 1;
    };
}

public class AIODevPoints {
    private func SetNewValue(oldValue: Int32, pointType: gamedataDevelopmentPointType, proficiencyType: gamedataProficiencyType, level: Int32) -> Int32 {
        if this.IsSkillLevelUp(proficiencyType) {
            return this.GetPerkPointsOnSkillLevelUp(oldValue, proficiencyType, level);
        } else {
            if NotEquals(proficiencyType, gamedataProficiencyType.StreetCred) {
                if Equals(pointType, gamedataDevelopmentPointType.Attribute) {
                    return this.GetPointsValue(oldValue, 0);
                } else {
                    return this.GetPointsValue(oldValue, 1);
                }
            } else {
                return oldValue;
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

    private func GetPointsValue(oldValue: Int32, type: Int32) -> Int32 {
        let devPointsQuantitySettings = new DevPointsQuantitySettings();
        
        if devPointsQuantitySettings.enableDevPointsPerLevel {
            switch type{
                case 0: return devPointsQuantitySettings.attributePointsPerLevel;
                case 1: return devPointsQuantitySettings.perkPointsPerLevel;
                default: return oldValue;
            }
        } else {
            return oldValue;
        }
    }

    private func GetPerkPointsOnSkillLevelUp(oldValue: Int32, proficiencyType: gamedataProficiencyType, level: Int32) -> Int32 {
        let devPointsQuantitySettings = new DevPointsQuantitySettings();
        let newValue: Int32 = devPointsQuantitySettings.perkPointsOnSkillLevelUp;

        if devPointsQuantitySettings.enablePerkPointsOnSkillLevelUp {
            switch proficiencyType {
                case gamedataProficiencyType.Assault:
                    switch level {
                        case 3: return newValue - 1;
                        case 6: return newValue - 1;
                        case 9: return newValue - 1;
                        case 10: return newValue - 1;
                        case 12: return newValue - 1;
                        case 15: return newValue - 1;
                        case 18: return newValue - 1;
                        default: return oldValue;
                    }

                case gamedataProficiencyType.Athletics:
                    switch level {
                        case 3: return newValue - 1;
                        case 7: return newValue - 1;
                        case 8: return newValue - 1;
                        case 10: return newValue - 1;
                        case 11: return newValue - 1;
                        case 16: return newValue - 1;
                        case 19: return newValue - 1;
                        default: return oldValue;
                    }

                case gamedataProficiencyType.Brawling:
                    switch level {
                        case 3: return newValue - 1;
                        case 6: return newValue - 1;
                        case 9: return newValue - 1;
                        case 10: return newValue - 1;
                        case 12: return newValue - 1;
                        case 15: return newValue - 1;
                        case 18: return newValue - 1;
                        default: return oldValue;
                    }

                case gamedataProficiencyType.ColdBlood:
                    switch level {
                        case 4: return newValue - 1;
                        case 5: return newValue - 1;
                        case 9: return newValue - 1;
                        case 10: return newValue - 1;
                        case 11: return newValue - 1;
                        case 13: return newValue - 1;
                        case 17: return newValue - 1;
                        default: return oldValue;
                    }
                
                case gamedataProficiencyType.CombatHacking:
                    switch level {
                        case 2: return newValue - 1;
                        case 4: return newValue - 1;
                        case 9: return newValue - 1;
                        case 11: return newValue - 1;
                        case 14: return newValue - 1;
                        case 19: return newValue - 1;
                        default: return oldValue;
                    }
                
                case gamedataProficiencyType.Crafting:
                    switch level {
                        case 4: return newValue - 1;
                        case 6: return newValue - 1;
                        case 8: return newValue - 1;
                        case 10: return newValue - 1;
                        case 14: return newValue - 1;
                        case 17: return newValue - 1;
                        default: return oldValue;
                    }
                
                case gamedataProficiencyType.Demolition:
                    switch level {
                        case 3: return newValue - 1;
                        case 6: return newValue - 1;
                        case 9: return newValue - 1;
                        case 10: return newValue - 1;
                        case 12: return newValue - 1;
                        case 15: return newValue - 1;
                        case 18: return newValue - 1;
                        default: return oldValue;
                    }
                
                case gamedataProficiencyType.Engineering:
                    switch level {
                        case 2: return newValue - 1;
                        case 6: return newValue - 1;
                        case 8: return newValue - 1;
                        case 10: return newValue - 1;
                        case 14: return newValue - 1;
                        case 17: return newValue - 1;
                        case 18: return newValue - 1;
                        default: return oldValue;
                    }
                
                case gamedataProficiencyType.Gunslinger:
                    switch level {
                        case 3: return newValue - 1;
                        case 6: return newValue - 1;
                        case 9: return newValue - 1;
                        case 10: return newValue - 1;
                        case 12: return newValue - 1;
                        case 15: return newValue - 1;
                        case 18: return newValue - 1;
                        default: return oldValue;
                    }
                
                case gamedataProficiencyType.Hacking:
                    switch level {
                        case 2: return newValue - 1;
                        case 6: return newValue - 1;
                        case 10: return newValue - 1;
                        case 14: return newValue - 1;
                        case 16: return newValue - 1;
                        case 18: return newValue - 1;
                        default: return oldValue;
                    }
                
                case gamedataProficiencyType.Kenjutsu:
                    switch level {
                        case 3: return newValue - 1;
                        case 8: return newValue - 1;
                        case 9: return newValue - 1;
                        case 10: return newValue - 1;
                        case 14: return newValue - 1;
                        case 16: return newValue - 1;
                        case 17: return newValue - 1;
                        default: return oldValue;
                    }
                
                case gamedataProficiencyType.Stealth:
                    switch level {
                        case 3: return newValue - 1;
                        case 5: return newValue - 1;
                        case 7: return newValue - 1;
                        case 10: return newValue - 1;
                        case 13: return newValue - 1;
                        case 17: return newValue - 1;
                        case 18: return newValue - 1;
                        default: return oldValue;
                    }
            }
        } else {
            return oldValue;
        }
    }
}
