module ExperienceManager.Localization

public class LocalizationProvider extends ModLocalizationProvider {
  public func GetPackage(language: CName) -> ref<ModLocalizationPackage> {
    switch language {
      case n"en-us": return new English();
      // case n"pt-br": return new Portuguese();
      default: return null;
    }
  }

  public func GetFallBack() -> CName {
    return n"en-us";
  }
}
