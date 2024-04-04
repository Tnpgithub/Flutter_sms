// Copyright 2019 Aleksander Woźniak
// SPDX-License-Identifier: Apache-2.0

import 'package:flutter/widgets.dart';
import 'package:intl/intl.dart';
import 'package:student_app/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';

import 'table_calandre_custon_icon_button.dart';



class CalendarHeader extends StatelessWidget {
  final dynamic locale;
  final DateTime focusedMonth;
  final CalendarFormat calendarFormat;
  final HeaderStyle headerStyle;
  final VoidCallback onLeftChevronTap;
  final VoidCallback onRightChevronTap;
  final VoidCallback onHeaderTap;
  final VoidCallback onHeaderLongPress;
  final ValueChanged<CalendarFormat> onFormatButtonTap;
  final Map<CalendarFormat, String> availableCalendarFormats;
  final DayBuilder? headerTitleBuilder;

  const CalendarHeader({
    Key? key,
    this.locale,
    required this.focusedMonth,
    required this.calendarFormat,
    required this.headerStyle,
    required this.onLeftChevronTap,
    required this.onRightChevronTap,
    required this.onHeaderTap,
    required this.onHeaderLongPress,
    required this.onFormatButtonTap,
    required this.availableCalendarFormats,
    this.headerTitleBuilder,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final text = headerStyle.titleTextFormatter?.call(focusedMonth, locale) ??
        DateFormat.yMMMM(locale).format(focusedMonth);

    return Container(
      decoration: headerStyle.decoration,
      margin: headerStyle.headerMargin,
      padding: headerStyle.headerPadding,
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          if (headerStyle.leftChevronVisible)
            CustomIconButton(
              icon: headerStyle.leftChevronIcon,
              onTap: onLeftChevronTap,
              margin: headerStyle.leftChevronMargin,
              padding: headerStyle.leftChevronPadding,
            ),
          Expanded(
            child: headerTitleBuilder?.call(context, focusedMonth) ??
                GestureDetector(
                  onTap: onHeaderTap,
                  onLongPress: onHeaderLongPress,
                  child: Center(
                    child: Text(
                      text,
                      style: headerStyle.titleTextStyle.copyWith(
                        color: Color(0xFF222B45),
                        fontSize: 20.fSize,
                        fontFamily: 'SF Pro Display',
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: headerStyle.titleCentered
                          ? TextAlign.center
                          : TextAlign.start,
                    ),
                  ),
                ),
          ),
          if (headerStyle.formatButtonVisible &&
              availableCalendarFormats.length > 1)
            // Padding(
            //   padding: const EdgeInsets.only(left: 8.0),
            //   child: FormatButton(
            //     onTap: onFormatButtonTap,
            //     availableCalendarFormats: availableCalendarFormats,
            //     calendarFormat: calendarFormat,
            //     decoration: headerStyle.formatButtonDecoration,
            //     padding: headerStyle.formatButtonPadding,
            //     textStyle: headerStyle.formatButtonTextStyle,
            //     showsNextFormat: headerStyle.formatButtonShowsNext,
            //   ),
            // ),
          if (headerStyle.rightChevronVisible)
            CustomIconButton(
              icon: headerStyle.rightChevronIcon,
              onTap: onRightChevronTap,
              margin: headerStyle.rightChevronMargin,
              padding: headerStyle.rightChevronPadding,
            ),
        ],
      ),
    );
  }
}
