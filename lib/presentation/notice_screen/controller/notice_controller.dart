import 'package:student_app/core/app_export.dart';
import 'package:student_app/presentation/notice_screen/models/example_notice.dart';

/// A controller class for the NoticeScreen.
///
/// This class manages the state of the NoticeScreen, including the
/// current noticeModelObj
class NoticeController extends GetxController {
  Rx<NoticeModel> noticeModelObj = NoticeModel().obs;
}
