module AIOMultiplier.Notifications
import AIOMultiplier.UI.NotificationSystemSettings

private class AIONotificationSystem extends ScriptableSystem {
    private let game: GameInstance;
    private let player: wref<PlayerPuppet>;
    private let blackboard: ref<IBlackboard>;
    private let notificationSystemSettings: ref<NotificationSystemSettings>;

    private func Setup() -> Void {
        this.notificationSystemSettings = new NotificationSystemSettings();
        this.game = this.GetGameInstance();
        this.player = GetPlayer(this.game);
        this.blackboard = GameInstance.GetBlackboardSystem(this.player.GetGame()).Get(GetAllBlackboardDefs().UI_Notifications);
    }
    
    private func ShowNotification(msg: String) -> Void {
        let screenMessage: SimpleScreenMessage;
        screenMessage.isShown = true;
        screenMessage.duration = 5.0;
        screenMessage.message = msg;
        this.blackboard.SetVariant(GetAllBlackboardDefs().UI_Notifications.WarningMessage, ToVariant(screenMessage), true);
    }

    private func IsEnabled() -> Bool {
        return this.notificationSystemSettings.enableNotificationSystem;
    }

    private func GetDuration() -> Float {
        return this.notificationSystemSettings.notificationSystemDuration;
    }
}
