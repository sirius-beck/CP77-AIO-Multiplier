module AIOMultiplier.DevPoints

public class AIODevPoints {
    private let settings: ref<AIODevPointsSettings>;

    private func GetSettings() -> ref<AIODevPointsSettings> {
        if !IsDefined(this.settings) {
            this.settings = new AIODevPointsSettings();
        }

        return this.settings;
    }

    // private func SetNewRespecCost(cost: Int32) -> Int32 {
    //     let settings = this.GetSettings();
    //     if settings.noRespecCost {
    //         cost = 0;
    //     }
    //     return cost;
    // }
    private func SetNewValue(
        oldValue: Int32,
        proficiencyType: gamedataProficiencyType,
        pointType: gamedataDevelopmentPointType,
        level: Int32
    ) -> Int32 {
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
        let settings = this.GetSettings();

        if settings.enableDevPointsPerLevel {
            switch type {
                case 0:
                    return settings.attributePointsPerLevel;
                case 1:
                    return settings.perkPointsPerLevel;
                default:
                    return oldValue;
            }
        } else {
            return oldValue;
        }
    }

    private func GetPerkPointsOnSkillLevelUp(oldValue: Int32, proficiencyType: gamedataProficiencyType, level: Int32) -> Int32 {
        let settings = this.GetSettings();
        let newValue: Int32 = settings.perkPointsOnSkillLevelUp;

        if settings.enablePerkPointsOnSkillLevelUp {
            switch proficiencyType {
                case gamedataProficiencyType.Assault:
                    switch level {
                        case 3:
                            return newValue - 1;
                        case 6:
                            return newValue - 1;
                        case 9:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 12:
                            return newValue - 1;
                        case 15:
                            return newValue - 1;
                        case 18:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Athletics:
                    switch level {
                        case 3:
                            return newValue - 1;
                        case 7:
                            return newValue - 1;
                        case 8:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 11:
                            return newValue - 1;
                        case 16:
                            return newValue - 1;
                        case 19:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Brawling:
                    switch level {
                        case 3:
                            return newValue - 1;
                        case 6:
                            return newValue - 1;
                        case 9:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 12:
                            return newValue - 1;
                        case 15:
                            return newValue - 1;
                        case 18:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.ColdBlood:
                    switch level {
                        case 4:
                            return newValue - 1;
                        case 5:
                            return newValue - 1;
                        case 9:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 11:
                            return newValue - 1;
                        case 13:
                            return newValue - 1;
                        case 17:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.CombatHacking:
                    switch level {
                        case 2:
                            return newValue - 1;
                        case 4:
                            return newValue - 1;
                        case 9:
                            return newValue - 1;
                        case 11:
                            return newValue - 1;
                        case 14:
                            return newValue - 1;
                        case 19:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Crafting:
                    switch level {
                        case 4:
                            return newValue - 1;
                        case 6:
                            return newValue - 1;
                        case 8:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 14:
                            return newValue - 1;
                        case 17:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Demolition:
                    switch level {
                        case 3:
                            return newValue - 1;
                        case 6:
                            return newValue - 1;
                        case 9:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 12:
                            return newValue - 1;
                        case 15:
                            return newValue - 1;
                        case 18:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Engineering:
                    switch level {
                        case 2:
                            return newValue - 1;
                        case 6:
                            return newValue - 1;
                        case 8:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 14:
                            return newValue - 1;
                        case 17:
                            return newValue - 1;
                        case 18:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Gunslinger:
                    switch level {
                        case 3:
                            return newValue - 1;
                        case 6:
                            return newValue - 1;
                        case 9:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 12:
                            return newValue - 1;
                        case 15:
                            return newValue - 1;
                        case 18:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Hacking:
                    switch level {
                        case 2:
                            return newValue - 1;
                        case 6:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 14:
                            return newValue - 1;
                        case 16:
                            return newValue - 1;
                        case 18:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Kenjutsu:
                    switch level {
                        case 3:
                            return newValue - 1;
                        case 8:
                            return newValue - 1;
                        case 9:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 14:
                            return newValue - 1;
                        case 16:
                            return newValue - 1;
                        case 17:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
                    break;
                case gamedataProficiencyType.Stealth:
                    switch level {
                        case 3:
                            return newValue - 1;
                        case 5:
                            return newValue - 1;
                        case 7:
                            return newValue - 1;
                        case 10:
                            return newValue - 1;
                        case 13:
                            return newValue - 1;
                        case 17:
                            return newValue - 1;
                        case 18:
                            return newValue - 1;
                        default:
                            return oldValue;
                    }
            }
        } else {
            return oldValue;
        }
    }
}
