import '../../../core/app_export.dart';

/// This class is used in the [list7th_grade_b_item_widget] screen.

class List7thGradeBItemModel {
  List7thGradeBItemModel({
    this.kristinwatson,
    this.kristinwastson,
    this.id,
  }) {
    kristinwatson = kristinwatson ?? Rx("7th Grade B Section");
    kristinwastson = kristinwastson ?? Rx("Total 40 Members");
    id = id ?? Rx("");
  }

  Rx<String>? kristinwatson;

  Rx<String>? kristinwastson;

  Rx<String>? id;
}
