module AIOMultiplier.DisassembledItems

public class AIODisassembledItemsSettings {
    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-disassembledMult")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-disassembledMult")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierDisassembled: Float = 1.0;
}
