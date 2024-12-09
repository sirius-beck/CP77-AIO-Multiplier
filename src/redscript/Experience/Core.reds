module AIOMultiplier.Experience

public class AIOExperience {
    private func GetMultiplier(type: gamedataProficiencyType) -> Float {
        let playerXPSettings = new AIOPlayerExperienceSettings();
        let skillsXPSettings = new AIOSkillsExperienceSettings();

        if skillsXPSettings.useFlexXP {
            switch type {
                case gamedataProficiencyType.Level:
                    return playerXPSettings.multiplierLevel;
                case gamedataProficiencyType.StreetCred:
                    return playerXPSettings.multiplierStreetCred;
                case gamedataProficiencyType.Assault:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Athletics:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Brawling:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.ColdBlood:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.CombatHacking:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Crafting:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Demolition:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Engineering:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Gunslinger:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Hacking:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Kenjutsu:
                    return skillsXPSettings.multiplierFlex;
                case gamedataProficiencyType.Stealth:
                    return skillsXPSettings.multiplierFlex;
                default:
                    return 1.0;
            }
        } else {
            switch type {
                case gamedataProficiencyType.Level:
                    return playerXPSettings.multiplierLevel;
                case gamedataProficiencyType.StreetCred:
                    return playerXPSettings.multiplierStreetCred;
                case gamedataProficiencyType.Assault:
                    return skillsXPSettings.multiplierAssault;
                case gamedataProficiencyType.Athletics:
                    return skillsXPSettings.multiplierAthletics;
                case gamedataProficiencyType.Brawling:
                    return skillsXPSettings.multiplierBrawling;
                case gamedataProficiencyType.ColdBlood:
                    return skillsXPSettings.multiplierColdBlood;
                case gamedataProficiencyType.CombatHacking:
                    return skillsXPSettings.multiplierCombatHacking;
                case gamedataProficiencyType.Crafting:
                    return skillsXPSettings.multiplierCrafting;
                case gamedataProficiencyType.Demolition:
                    return skillsXPSettings.multiplierDemolition;
                case gamedataProficiencyType.Engineering:
                    return skillsXPSettings.multiplierEngineering;
                case gamedataProficiencyType.Gunslinger:
                    return skillsXPSettings.multiplierGunslinger;
                case gamedataProficiencyType.Hacking:
                    return skillsXPSettings.multiplierHacking;
                case gamedataProficiencyType.Kenjutsu:
                    return skillsXPSettings.multiplierKenjutsu;
                case gamedataProficiencyType.Stealth:
                    return skillsXPSettings.multiplierStealth;
                default:
                    return 1.0;
            }
        }
    }

    public func NewXPAmount(amount: Int32, type: gamedataProficiencyType) -> Int32 {
        let xpValue: Int32 = Cast<Int32>(Cast<Float>(amount) * this.GetMultiplier(type));

        return xpValue;
    }
}
