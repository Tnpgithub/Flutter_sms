
/// This class is used in the [listdatetext_item_widget] screen.

class ListdatetextItemModel {
  ListdatetextItemModel({
  required this.text,
   required this.date,
  });
String text;
String date;
}
List<ListdatetextItemModel>noticeData=[
  ListdatetextItemModel(text: "Holiday And Vacation  ", date: "10 Sep, 2023"),
  ListdatetextItemModel(text: "Event Invitations", date: "07 Sep, 2023"),
  ListdatetextItemModel(text: 'Fees Payment', date: "01 Sep, 2023"),
  ListdatetextItemModel(text: "Holiday And Vacation Notice ", date: "30 Aug, 2023"),
];