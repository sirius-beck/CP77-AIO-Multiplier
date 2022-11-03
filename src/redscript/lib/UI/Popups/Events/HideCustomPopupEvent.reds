// -----------------------------------------------------------------------------
// ExperienceManager.UI.HideCustomPopupEvent
// -----------------------------------------------------------------------------

module ExperienceManager.UI

public class HideCustomPopupEvent extends CustomPopupEvent {
	public static func Create(controller: ref<CustomPopup>) -> ref<HideCustomPopupEvent> {
		let event: ref<HideCustomPopupEvent> = new HideCustomPopupEvent();
		event.controller = controller;

		return event;
	}
}
