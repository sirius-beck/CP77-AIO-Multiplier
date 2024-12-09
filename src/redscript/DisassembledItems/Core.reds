module AIOMultiplier.DisassembledItems

public class AIODisassembledItems {
    private func GetMultiplier() -> Float {
        let settings = new AIODisassembledItemsSettings();

        return settings.multiplierDisassembled;
    }

    private func NewAmunt(oldValue: Int32) -> Int32 {
        let newValue: Int32 = Cast<Int32>(Cast<Float>(oldValue) * this.GetMultiplier());

        return newValue;
    }
}
