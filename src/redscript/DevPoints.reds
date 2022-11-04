import AIOMultiplier.UI.DevPointsQuantitySettings

@addField(PlayerDevelopmentData)
private let aioDevPoints: ref<AIODevPoints>;

@wrapMethod(PlayerDevelopmentData)
private final const func ModifyDevPoints(type: gamedataProficiencyType, level: Int32) -> Void {
    wrappedMethod(type, level);

    if !IsDefined(this.aioDevPoints) {
        this.aioDevPoints = new AIODevPoints();
    }

    this.aioDevPoints.AddDevPoints(this, type, level);
}

public class AIODevPoints {
    let devPointsPerLevel: Int32;
    let changeDevPoints: Bool;

    public func AddDevPoints(playerData: ref<PlayerDevelopmentData>,type: gamedataProficiencyType, level: Int32) {
        let initVal: Int32;
        let i: Int32 = 0;
        let newValue: Int32;
        
        if this.changeDevPoints {
            while i <= EnumInt(gamedataDevelopmentPointType.Count) {
                initVal = playerData.GetDevPointsForLevel(level, type, IntEnum<gamedataDevelopmentPointType>(i));
                newValue = this.devPointsPerLevel - initVal;
                if newValue > 0 {
                    playerData.AddDevelopmentPoints(newValue, IntEnum<gamedataDevelopmentPointType>(i));
                };
                i += 1;
            };
        }
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
