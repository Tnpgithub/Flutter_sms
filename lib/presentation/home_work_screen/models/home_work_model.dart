import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import 'homework_item_model.dart';

/// This class defines the variables used in the [home_work_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeWorkModel {
  Rx<List<HomeworkItemModel>> homeworkItemList = Rx(List.generate(
      6,
      (index) => HomeworkItemModel(
          textColor: Colors.transparent,
          chapter: '',
          marked: "",
          subject: "",
          date: '')));
}
