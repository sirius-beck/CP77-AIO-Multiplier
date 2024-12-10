module AIOMultiplier.Attributes

class AIOAttributesSettings {
    @runtimeProperty("ModSettings.mod", "AIO-SETTINGS-mod-name")
    @runtimeProperty("ModSettings.category", "AIO-SETTINGS-category-Attributes")
    @runtimeProperty("ModSettings.displayName", "AIO-SETTINGS-displayName-ResetAttributesAlwaysEnabled")
    @runtimeProperty("ModSettings.description", "AIO-SETTINGS-desc-ResetAttributesAlwaysEnabled")
    let resetAttributesAlwaysEnabled: Bool = true;
}
