import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_app/core/utils/size_utils.dart';
import '../../../core/utils/image_constant.dart';
import '../../../theme/theme_helper.dart';
import '../../../widgets/custom_image_view.dart';
import '../controller/apply_leave_controller.dart';

class CheckBoxSell extends StatelessWidget {
  final int index;
  final String text;
  const CheckBoxSell({Key? key, required this.index, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ApplyLeaveController controller =Get.put(ApplyLeaveController());
    return  Obx(() {
      bool isSelect=controller.index.value==index;
      return GestureDetector(
        onTap: () {
          controller.index.value=index;
          controller.update();
        },
        child: Row(
          children: [
            isSelect?CustomImageView(
              imagePath: ImageConstant.check,
              height: 22.adaptSize,
              width: 22.adaptSize,
            ):CustomImageView(
              imagePath: ImageConstant.checkFill,
              height: 22.adaptSize,
              width: 22.adaptSize,
            ),
            SizedBox(width: 8.h),
            Text(
              text,
              style: TextStyle(
                color: isSelect? appTheme.gray700:ColorSchemes.primaryColorScheme.primary,
                fontSize: 14.fSize,
                fontFamily: 'SF Pro Display',
                fontWeight: FontWeight.w400,
              ),
            )
            // Icon(Icons.check_box_outlined,size:25,color: ColorSchemes.primaryColorScheme.errorContainer,),
          ],
        ),
      );
    },);
  }
}
