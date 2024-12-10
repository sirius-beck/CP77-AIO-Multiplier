module AIOMultiplier.DevPoints

@addField(PlayerDevelopmentData)
private let aioDevPoints: ref<AIODevPoints>;

@addMethod(PlayerDevelopmentData)
private const func GetAIODevPointsInstance() -> ref<AIODevPoints> {
    if !IsDefined(this.aioDevPoints) {
        this.aioDevPoints = new AIODevPoints();
    }

    return this.aioDevPoints;
}

@replaceMethod(PlayerDevelopmentData)
public const final func ModifyDevPoints(type: gamedataProficiencyType, level: Int32) -> Void {
    let i: Int32;
    let val: Int32 = 0;

    let aioDevPoints: ref<AIODevPoints> = this.GetAIODevPointsInstance();

    if Equals(type, gamedataProficiencyType.Espionage) {
        let proficiencyType: gamedataProficiencyType = gamedataProficiencyType.Espionage;
        let pointType: gamedataDevelopmentPointType = gamedataDevelopmentPointType.Espionage;

        val = this.GetDevPointsForLevel(level, proficiencyType, pointType);
        val = aioDevPoints.SetNewValue(val, proficiencyType, pointType, level);

        this.AddDevelopmentPoints(val, pointType);
    } else {
        i = 0;

        while i <= 4 {
            let pointType: gamedataDevelopmentPointType = IntEnum<gamedataDevelopmentPointType>(i);

            val = this.GetDevPointsForLevel(level, type, pointType);

            if val > 0 {
                val = aioDevPoints.SetNewValue(val, type, pointType, level);

                this.AddDevelopmentPoints(val, pointType);
            }
            i += 1;
        }
    }
}
