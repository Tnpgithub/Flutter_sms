import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/community_screen/models/example_community.dart';
import 'package:flutter/material.dart';

/// A controller class for the CommunityScreen.
///
/// This class manages the state of the CommunityScreen, including the
/// current communityModelObj
class CommunityController extends GetxController {
  TextEditingController searchController = TextEditingController();

  Rx<CommunityModel> communityModelObj = CommunityModel().obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
