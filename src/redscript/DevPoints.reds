import AIOMultiplier.UI.DevPointsQuantitySettings

@replaceMethod(PlayerDevelopmentData)
private final const func ModifyDevPoints(type: gamedataProficiencyType, level: Int32) -> Void {
    let val: Int32;
    let i: Int32 = 0;
    let aioDevPoints = new AIODevPoints();

    while i <= EnumInt(gamedataDevelopmentPointType.Count) {
        if aioDevPoints.CheckIfModify() {
            val = aioDevPoints.devPointsPerLevel;
        } else {
            val = this.GetDevPointsForLevel(level, type, IntEnum<gamedataDevelopmentPointType>(i));
        }
        
        if val > 0 {
        this.AddDevelopmentPoints(val, IntEnum<gamedataDevelopmentPointType>(i));
        };
        i += 1;
    };
}

public class AIODevPoints {
    let devPointsPerLevel: Int32;
    let changeDevPoints: Bool;

    public func CheckIfModify() -> Bool {
        this.GetDevPointsQuantity();

        return this.changeDevPoints;
    }

    private func GetDevPointsQuantity() -> Void {
        let devPointsQuantity = new DevPointsQuantitySettings();

        if devPointsQuantity.enableDevPointsQuantity {
            this.devPointsPerLevel = devPointsQuantity.multiplierDevPointsQuantity;
            this.changeDevPoints = true;
        } else {
            this.changeDevPoints = false;
        }
    }
}
