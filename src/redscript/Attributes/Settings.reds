module AIOMultiplier.Attributes

class AIOAttributesSettings {
    @runtimeProperty("ModSettings.mod", "AIO-ModSettings-ModName")
    @runtimeProperty("ModSettings.category", "AIO-ModSettings-Category-Attributes")
    @runtimeProperty("ModSettings.displayName", "AIO-ModSettings-DisplayName-ResetAttributesAlwaysEnabled")
    @runtimeProperty("ModSettings.description", "AIO-ModSettings-Description-ResetAttributesAlwaysEnabled")
    let resetAttributesAlwaysEnabled: Bool = true;
}
