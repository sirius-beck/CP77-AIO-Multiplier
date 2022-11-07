module AIOMultiplier.Init
import AIOMultiplier.UI.*

public class AIOInit {
    // Respec cost
    let noRespecCost: Bool;

    // Dev points
    let attributePointsPerLevel: Int32;
    let perkPointsPerLevel: Int32;

    // Item multiplier
    let multiplierMoney: Float;

    // Player level
    let multiplierLevel: Float;
    let multiplierStreetCred: Float;

    // Skills level
    let useFlexXP: Bool;
    let multiplierFlex: Float;
    let multiplierAssault: Float;
    let multiplierAthletics: Float;
    let multiplierBrawling: Float;
    let multiplierColdBlood: Float;
    let multiplierCombatHacking: Float;
    let multiplierCrafting: Float;
    let multiplierDemolition: Float;
    let multiplierEngineering: Float;
    let multiplierGunslinger: Float;
    let multiplierHacking: Float;
    let multiplierKenjutsu: Float;
    let multiplierStealth: Float;

    private func setup(mod: String) -> Void {
        let respecCostSettings = new RespecCostSettings();
        let devPointsQuantitySettings = new DevPointsQuantitySettings();
        let itemMultiplierSettings = new ItemMultiplierSettings();
        let playerExperienceModSettings = new PlayerExperienceModSettings();
        let skillsExperienceModSettings = new SkillsExperienceModSettings();

        switch mod {
        case "RespecCostSettings":
            this.noRespecCost = respecCostSettings.noRespecCost;
        case "DevPointsQuantitySettings":
            this.attributePointsPerLevel = devPointsQuantitySettings.attributePointsPerLevel;
            this.perkPointsPerLevel = devPointsQuantitySettings.perkPointsPerLevel;
        case "ItemMultiplierSettings":
            this.multiplierMoney = itemMultiplierSettings.multiplierMoney;
        case "PlayerExperienceModSettings":
            this.multiplierLevel = playerExperienceModSettings.multiplierLevel;
            this.multiplierStreetCred = playerExperienceModSettings.multiplierStreetCred;
        case "SkillsExperienceModSettings":
            this.useFlexXP = skillsExperienceModSettings.useFlexXP;
            this.multiplierFlex = skillsExperienceModSettings.multiplierFlex;
            this.multiplierAssault = skillsExperienceModSettings.multiplierAssault;
            this.multiplierAthletics = skillsExperienceModSettings.multiplierAthletics;
            this.multiplierBrawling = skillsExperienceModSettings.multiplierBrawling;
            this.multiplierColdBlood = skillsExperienceModSettings.multiplierColdBlood;
            this.multiplierCombatHacking = skillsExperienceModSettings.multiplierCombatHacking;
            this.multiplierCrafting = skillsExperienceModSettings.multiplierCrafting;
            this.multiplierDemolition = skillsExperienceModSettings.multiplierDemolition;
            this.multiplierEngineering = skillsExperienceModSettings.multiplierEngineering;
            this.multiplierGunslinger = skillsExperienceModSettings.multiplierGunslinger;
            this.multiplierHacking = skillsExperienceModSettings.multiplierHacking;
            this.multiplierKenjutsu = skillsExperienceModSettings.multiplierKenjutsu;
            this.multiplierStealth = skillsExperienceModSettings.multiplierStealth;
        }
    }
}
