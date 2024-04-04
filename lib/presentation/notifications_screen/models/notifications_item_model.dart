
/// This class is used in the [notifications_item_widget] screen.

class NotificationsItemModel {
  NotificationsItemModel({
   this.min,
    this.text,
  }) ;
   String? text;
   String? min;
}
List<NotificationsItemModel>notificationsList=[
  NotificationsItemModel(text: "Leave Scheduled\nOff Campus Overnight Leave ",min: "10 min"),
  NotificationsItemModel(text: "Leave Scheduled\nOff Campus Overnight Leave ",min: "15 min"),
  NotificationsItemModel(text: "Leave Endorsed\nOff Campus Overnight Leave",min: "1 hour"),
  NotificationsItemModel(text: "Leave Scheduled\nOff Campus Overnight Leave",min: "4 hour"),
  NotificationsItemModel(text: "Leave Scheduled\nOff Campus Overnight Leave",min: "10 hour"),
  NotificationsItemModel(text: "Leave Scheduled\nOff Campus Overnight Leave",min: "1 day"),
];