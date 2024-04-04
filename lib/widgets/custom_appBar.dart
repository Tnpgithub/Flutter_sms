import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:student_app/core/utils/size_utils.dart';

import '../theme/theme_helper.dart';

// ignore: must_be_immutable, camel_case_types
class customAppBarSecond extends StatelessWidget implements PreferredSizeWidget {
  customAppBarSecond({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
    this.systemUiOverlayStyle,
    this.appBarColor,
  }) : super(
    key: key,
  );

  final double? height;
  final SystemUiOverlayStyle? systemUiOverlayStyle;

  final Style? styleType;
  final Color?appBarColor;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 34.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      systemOverlayStyle: systemUiOverlayStyle??systemUiOverlayStyle?? SystemUiOverlayStyle.dark.copyWith(
        statusBarColor: appBarColor??Colors.transparent,
      ),
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
    mediaQueryData.size.width,
    height ?? 34.v,
  );
  _getStyle() {
    switch (styleType) {
      case Style.bgFill:
        return Container(
          height: 81.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgFill,
}
