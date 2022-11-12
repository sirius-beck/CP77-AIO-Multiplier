module AIOMultiplier.Notifications
// import AIOMultiplier.UI.NotificationSystemSettings

// public class AIONotificationSystem {
//     private let gameInstance: GameInstance;
//     private let player: wref<PlayerPuppet>;
//     private let blackboard: ref<IBlackboard>;
//     private let notificationSystemSettings: ref<NotificationSystemSettings>;

//     private func Setup() -> Void {
//         this.notificationSystemSettings = new NotificationSystemSettings();
//         this.gameInstance = GetGameInstance();
//         this.player = GetPlayer(this.gameInstance);
//         this.blackboard = GameInstance.GetBlackboardSystem(this.player.GetGame()).Get(GetAllBlackboardDefs().UI_Notifications);
//     }
    
//     private func ShowNotification(msg: String) -> Void {
//         this.Setup();
        
//         if this.IsEnabled() {
//             let screenMessage: SimpleScreenMessage;
//             screenMessage.isShown = true;
//             screenMessage.duration = this.GetDuration();
//             screenMessage.message = msg;
//             this.blackboard.SetVariant(GetAllBlackboardDefs().UI_Notifications.WarningMessage, ToVariant(screenMessage), true);
//         }
//     }

//     private func IsEnabled() -> Bool {
//         return this.notificationSystemSettings.enableNotificationSystem;
//     }

//     private func GetDuration() -> Float {
//         return this.notificationSystemSettings.notificationSystemDuration;
//     }
// }



// @addMethod(PlayerDevelopmentData)
// private func AIONotificationSystemShowNotification(msg: String) -> Void {
//     if this.AIONotificationSystemIsEnabled() {
//         let blackboard: ref<IBlackboard>;
//         let screenMessage: SimpleScreenMessage;
//         screenMessage.isShown = true;
//         screenMessage.duration = this.AIONotificationSystemGetDuration();
//         screenMessage.message = msg;
//         blackboard.SetVariant(GetAllBlackboardDefs().UI_Notifications.WarningMessage, ToVariant(screenMessage), true);
//     }
// }

// @addMethod(PlayerDevelopmentData)
// private func AIONotificationSystemIsEnabled() -> Bool {
//     let notificationSystemSettings: ref<NotificationSystemSettings>;
//     return notificationSystemSettings.enableNotificationSystem;
// }

// @addMethod(PlayerDevelopmentData)
// private func AIONotificationSystemGetDuration() -> Float {
//     let notificationSystemSettings: ref<NotificationSystemSettings>;
//     return notificationSystemSettings.notificationSystemDuration;
// }
