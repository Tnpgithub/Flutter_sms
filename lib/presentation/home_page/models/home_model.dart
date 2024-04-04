import '../../../core/app_export.dart';
import 'attendancecolum_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel {
  Rx<List<AttendancecolumItemModel>> attendancecolumItemList =
      Rx(List.generate(8, (index) => AttendancecolumItemModel()));
}
