// -----------------------------------------------------------------------------
// ExperienceManager.UI.inkWidgetHelper
// -----------------------------------------------------------------------------
//
// public abstract class inkWidgetHelper {
//   public static func InWindowTree(widget: ref<inkWidget>) -> Bool
// }
//

module ExperienceManager.UI

public abstract class inkWidgetHelper {
	public static func InWindowTree(widget: ref<inkWidget>) -> Bool {
		while (IsDefined(widget)) {
			if widget.IsA(n"inkVirtualWindow") {
				return true;
			}

			widget = widget.GetParentWidget();
		}

		return false;
	}
}
