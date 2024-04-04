import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.

class UserprofileItemModel {
  UserprofileItemModel({
    required this.secondText,
    required this.text,
    required this.image,
  });

  String text;
  String image;
  String secondText;
}

List<UserprofileItemModel> userChats = [
  UserprofileItemModel(
    secondText: "Kristin wastson | 7th B",
    text: "Kristin Watson",
    image: ImageConstant.imgEllipse29,
  ),
  UserprofileItemModel(
    secondText: "Wade Warren | 6th A",
    text: "Wade Warren",
    image: ImageConstant.chatOne,
  ),
  UserprofileItemModel(
    secondText: "Jenny Wilson | 6th B",
    text: "Jenny Wilson",
    image: ImageConstant.chatTwo,
  ),
  UserprofileItemModel(
    secondText: "Robert Fox | 8th A",
    text: "Robert Fox",
    image: ImageConstant.chatThree,
  ),
  UserprofileItemModel(
    secondText: "Devon Lane | 9th B",
    text: "Devon Lane",
    image: ImageConstant.chatFour,
  ),
  UserprofileItemModel(
    secondText: "Marvin McKinney | 9th A",
    text: "Marvin McKinney",
    image: ImageConstant.chatFive,
  ),
];
List<UserprofileItemModel> groupChatData = [
  UserprofileItemModel(
    secondText: "Total 40 Members",
    text: "7th Grade B Section",
    image: ImageConstant.imgEllipse295,
  ),
  UserprofileItemModel(
    secondText: "Total 50 Members",
    text: "9th Grade A Section",
    image: ImageConstant.chatOne,
  ),
  UserprofileItemModel(
    secondText: "Total 44 Members",
    text: "4th Grade B Section",
    image: ImageConstant.chatTwo,
  ),
];
