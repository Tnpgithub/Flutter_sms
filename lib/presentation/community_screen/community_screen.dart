import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:student_app/Services/community_api.dart';
import 'package:student_app/presentation/community_screen/models/community_model.dart';
import '../community_screen/widgets/community_item_widget.dart';
import 'controller/community_controller.dart';
import 'models/community_item_model.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/widgets/app_bar/appbar_image_2.dart';
import 'package:student_app/widgets/app_bar/appbar_title.dart';
import 'package:student_app/widgets/app_bar/custom_app_bar.dart';
import 'package:student_app/widgets/custom_search_view.dart';

class CommunityScreen extends StatefulWidget {
  const CommunityScreen({Key? key}) : super(key: key);

  @override
  _CommunityScreenState createState() => _CommunityScreenState();
}

class _CommunityScreenState extends State<CommunityScreen> {
  late MediaQueryData mediaQueryData;
  final CommunityController _controller = Get.find<CommunityController>();

  List<CommunityModel> community = [];

  @override
  void initState() {
    super.initState();
    fetchCommunity();
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.symmetric(vertical: 21.v),
            decoration: AppDecoration.white,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 4.v),
                CustomAppBar(
                  leadingWidth: 44.h,
                  leading: AppbarImage2(
                    svgPath: ImageConstant.imgArrowleft,
                    margin: EdgeInsets.only(left: 20.h, top: 3.v, bottom: 6.v),
                    onTap: () {
                      onTapArrowleftone();
                    },
                  ),
                  centerTitle: true,
                  title: AppbarTitle(text: "lbl_community".tr),
                ),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 24.v),
              child: Column(
                children: [
                  CustomSearchView(
                    textInputAction: TextInputAction.done,
                    autofocus: false,
                    contentPadding: EdgeInsets.symmetric(vertical: 10.h),
                    controller: _controller.searchController,
                    hintText: "Search Event...".tr,
                    hintStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 16.fSize,
                      fontFamily: 'SF Pro Display',
                      fontWeight: FontWeight.w400,
                    ),
                    prefix: Container(
                      margin: EdgeInsets.fromLTRB(16.h, 15.v, 13.h, 15.v),
                      child: CustomImageView(svgPath: ImageConstant.imgSearch),
                    ),
                    prefixConstraints: BoxConstraints(maxHeight: 54.v),
                  ),
                  SizedBox(height: 24.v),
                  Expanded(
                    child: ListView.separated(
                      padding: EdgeInsets.zero,
                      physics: BouncingScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 16.v);
                      },
                      itemCount: community.length,
                      itemBuilder: (context, index) {
                        return GestureDetector(
                          onTap: () {
                            Get.toNamed(AppRoutes.sportsDayScreen);
                          },
                          child: CommunityItemWidget(
                            date: community[index].name,
                            image: community[index].photo_url,
                            days: community[index].date_formatted,
                          ),
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  ///
  /// When the action is triggered, this function uses the [Get] package to
  /// navigate to the previous screen in the navigation stack.
  onTapArrowleftone() {
    Get.back();
  }

  Future<void> fetchCommunity() async {
    final response = await CommunityApi.fetchCommunity('Event', 3, 0);

    setState(() {
      community = response;
    });
  }
}
