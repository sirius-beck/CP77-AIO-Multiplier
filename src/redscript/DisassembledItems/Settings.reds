module AIOMultiplier.DisassembledItems

public class AIODisassembledItemsSettings {
    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-itemsMult")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-disassembledMult")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-disassembledMult")
    @runtimeProperty("ModSettings.step", "0.5")
    @runtimeProperty("ModSettings.min", "1.0")
    @runtimeProperty("ModSettings.max", "100.0")
    let multiplierDisassembled: Float = 1.0;
}
