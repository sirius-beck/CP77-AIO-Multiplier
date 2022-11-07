import AIOMultiplier.Init.*

@replaceMethod(PlayerDevelopmentData)
private final const func ModifyDevPoints(type: gamedataProficiencyType, level: Int32) -> Void {
    let val: Int32;
    let i: Int32 = 0;

    while i <= EnumInt(gamedataDevelopmentPointType.Count) {
        val = AIODevPoints.SetNewValue(this.GetDevPointsForLevel(level, type, IntEnum<gamedataDevelopmentPointType>(i)), IntEnum<gamedataDevelopmentPointType>(i));
        
        if val > 0 {
        this.AddDevelopmentPoints(val, IntEnum<gamedataDevelopmentPointType>(i));
        };
        i += 1;
    };
}

public class AIODevPoints {
    let devPointsPerLevel: Int32;
    let changeDevPoints: Bool;

    private static func SetNewValue(oldValue: Int32, pointType: gamedataDevelopmentPointType) -> Int32 {
        let newValue: Int32;

        if Equals(pointType, gamedataDevelopmentPointType.Attribute) {
            newValue = AIODevPoints.GetDevPointsPerLevel(0);
        } else {
            newValue = AIODevPoints.GetDevPointsPerLevel(1);
        }

        if newValue > oldValue {
            return newValue;
        } else {
            return oldValue;
        }
    }

    private static func GetDevPointsPerLevel(type: Int32) -> Int32 {
        let aioInit = new AIOInit();
        aioInit.setup("DevPointsQuantitySettings");
        
        switch type{
            case 0: return aioInit.attributePointsPerLevel;
            case 1: return aioInit.perkPointsPerLevel;
            default: return 1;
        }
    }
}
