import 'package:flutter/material.dart';

import '../../../core/app_export.dart';
import 'fees_item_model.dart';

/// This class defines the variables used in the [fees_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FeesModel {
  Rx<List<FeesItemModel>> feesItemList = Rx(List.generate(5,
      (index) => FeesItemModel(color: Colors.transparent,money: "", feesMonth: "", date: "", paid: "")));
}
