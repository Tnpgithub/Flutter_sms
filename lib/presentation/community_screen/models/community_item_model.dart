import '../../../core/app_export.dart';

/// This class is used in the [community_item_widget] screen.

class CommunityItemModel {
  CommunityItemModel({
    required this.date,
    required this.days,
    required this.image,
  });

  final String date;
  final String image;
  final String days;
}

List<CommunityItemModel> communityData = [
  CommunityItemModel(date: '10 Sep, 2023',
    days: 'Sports Day Photos and Videos ',
    image: ImageConstant.imgRectangle728,),
  CommunityItemModel(date: '10 Sep, 2023',
    days: 'Annual Day Photos and Videos ',
    image: ImageConstant.annualDayPhotos,),
  CommunityItemModel(
    date: '10 Oct, 2023',
    days: "Yoga Day Photos and Videos ",
    image: ImageConstant.yogaDayPhotos,)
];
