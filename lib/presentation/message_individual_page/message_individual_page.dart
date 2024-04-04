import '../message_groups_screen/message_groups_screen.dart';
import '../message_individual_page/widgets/userprofile_item_widget.dart';
import 'controller/message_individual_controller.dart';
import 'models/message_individual_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/custom_search_view.dart';

// ignore: must_be_immutable
class MessageIndividualPage extends StatelessWidget {
  MessageIndividualPage({Key? key})
      : super(
          key: key,
        );

  MessageIndividualController controller =
      Get.put(MessageIndividualController(MessageIndividualModel().obs));

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return Padding(
      padding: EdgeInsets.only(
        left: 20.h,
        top: 32.v,
        right: 20.h,
      ),
      child: Column(
        children: [


          CustomSearchView(
            textInputAction: TextInputAction.done,
            autofocus: false,
            // margin: EdgeInsets.symmetric(horizontal: 20.h),
            contentPadding: EdgeInsets.symmetric(vertical: 10.h),
            controller: controller.searchController,
            hintText: "Search anything...".tr,
            hintStyle: TextStyle(
              color: Color(0xFF696969),
              fontSize: 16.fSize,
              fontFamily: 'SF Pro Display',
              fontWeight: FontWeight.w400,
            ),
            prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 15.v, 13.h, 15.v),
                child: CustomImageView(svgPath: ImageConstant.imgSearch)),
            prefixConstraints: BoxConstraints(maxHeight: 54.v),
            // suffix: Padding(
            //     padding: EdgeInsets.only(right: 15.h),
            //     child: IconButton(
            //         onPressed: () {
            //           controller.searchController
            //               .clear();
            //         },
            //         icon: Icon(Icons.clear,
            //             color: Colors.grey.shade600)))
          ),

          // CustomTextFormField(
          //   textInputAction: TextInputAction.done,
          //   autofocus: false,
          //   hintStyle: TextStyle(
          //     color: appTheme.gray700,
          //     fontSize: 16.fSize,
          //     fontFamily: 'SF Pro Display',
          //     fontWeight: FontWeight.w400,
          //   ),
          //   contentPadding: EdgeInsets.symmetric(vertical: 10.h),
          //   controller: controller.searchController,
          //   hintText: "Search anything...".tr,
          //   prefix: Container(
          //       margin: EdgeInsets.fromLTRB(16.h, 15.v, 13.h, 15.v),
          //       child: CustomImageView(svgPath: ImageConstant.imgSearch)),
          //   prefixConstraints: BoxConstraints(maxHeight: 54.v),
          //   // suffix: Padding(
          //   //     padding: EdgeInsets.only(right: 15.h),
          //   //     child: IconButton(
          //   //         onPressed: () {
          //   //           controller.searchController
          //   //               .clear();
          //   //         },
          //   //         icon: Icon(Icons.clear,
          //   //             color: Colors.grey.shade600)))
          // ),
          // CustomSearchView(
          //   autofocus: false,
          //   controller: controller.searchController,
          //   hintText: "msg_search_anything".tr,
          //   prefix: Container(
          //     margin: EdgeInsets.fromLTRB(16.h, 15.v, 13.h, 15.v),
          //     child: CustomImageView(
          //       svgPath: ImageConstant.imgSearch,
          //     ),
          //   ),
          //   prefixConstraints: BoxConstraints(
          //     maxHeight: 54.v,
          //   ),
          //   // suffix: Padding(
          //   //   padding: EdgeInsets.only(
          //   //     right: 15.h,
          //   //   ),
          //   //   child: IconButton(
          //   //     onPressed: () {
          //   //       controller.searchController.clear();
          //   //     },
          //   //     icon: Icon(
          //   //       Icons.clear,
          //   //       color: Colors.grey.shade600,
          //   //     ),
          //   //   ),
          //   // ),
          // ),
          SizedBox(height: 32.v),
          Expanded(
            child:ListView.separated(
              physics: BouncingScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                  context,
                  index,
                  ) {
                return Padding(
                  padding: EdgeInsets.symmetric(vertical: 15.v,),
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                );
              },
              itemCount: userChats.length,
              itemBuilder: (context, index) {

                return InkWell(
                  onTap: () {
                    Get.to(MessageGroupsScreen());
                  },
                  child: UserprofileItemWidget(
                      text: userChats[index].text,
                      image: userChats[index].image,
                      secondText: userChats[index].secondText),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
