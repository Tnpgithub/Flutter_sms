import 'package:carousel_slider/carousel_controller.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/home_page/models/home_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the HomePage.
///
/// This class manages the state of the HomePage, including the
/// current homeModelObj
class HomeController extends GetxController {
  HomeController(this.homeModelObj);

  TextEditingController searchController = TextEditingController();

  Rx<HomeModel> homeModelObj;
  CarouselController carouselController = CarouselController();
  RxInt select = 0.obs;

  @override
  void onClose() {
    super.onClose();
    searchController.dispose();
  }
}
