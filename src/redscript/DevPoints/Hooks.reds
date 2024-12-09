module AIOMultiplier.DevPoints

@addField(PlayerDevelopmentData)
private let aioDevPoints: ref<AIODevPoints>;

@replaceMethod(PlayerDevelopmentData)
public const final func ModifyDevPoints(type: gamedataProficiencyType, level: Int32) -> Void {
    let i: Int32;
    let val: Int32 = 0;

    if !IsDefined(this.aioDevPoints) {
        this.aioDevPoints = new AIODevPoints();
    }

    if Equals(type, gamedataProficiencyType.Espionage) {
        let proficiencyType: gamedataProficiencyType = gamedataProficiencyType.Espionage;
        let pointType: gamedataDevelopmentPointType = gamedataDevelopmentPointType.Espionage;

        val = this.GetDevPointsForLevel(level, proficiencyType, pointType);
        val = this.aioDevPoints.SetNewValue(val, proficiencyType, pointType, level);

        this.AddDevelopmentPoints(val, pointType);
    } else {
        i = 0;

        while i <= 4 {
            let pointType: gamedataDevelopmentPointType = IntEnum<gamedataDevelopmentPointType>(i);

            val = this.GetDevPointsForLevel(level, type, pointType);

            if val > 0 {
                val = this.aioDevPoints.SetNewValue(val, type, pointType, level);

                this.AddDevelopmentPoints(val, pointType);
            }
            i += 1;
        }
    }
}
