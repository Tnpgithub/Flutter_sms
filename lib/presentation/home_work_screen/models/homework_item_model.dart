import 'package:flutter/material.dart';

import '../../../core/app_export.dart';

/// This class is used in the [homework_item_widget] screen.

class HomeworkItemModel {
  HomeworkItemModel({
    required this.textColor,
    required this.chapter,
    required this.marked,
    required this.subject,
    required this.date,
  });

  final String subject;
  final String date;
  final String chapter;
  final String marked;
  final Color textColor;
}

List<HomeworkItemModel> homeWorkData = [
  HomeworkItemModel(
      textColor: appTheme.amber700,
      chapter: "Chapter 2 Summary",
      marked: "Pending",
      subject: "English",
      date: "4 Sep, 2023",
  ),
  HomeworkItemModel(
    textColor: appTheme.amber700,
    chapter: "Chapter 5 MCQs",
    marked: "Pending",
    subject: "Maths",
    date: "4 Sep, 2023",
  ),
  HomeworkItemModel(
    textColor: appTheme.greenA700,
    chapter: "Types Of Matter",
    marked: "Marked",
    subject: "S.S",
    date: "3 Sep, 2023",
  ),
  HomeworkItemModel(
    textColor: appTheme.greenA700,
    chapter: "My Best Friend Essay",
    marked: "Marked",
    subject: "Hindi",
    date: "4 Sep, 2023",
  ),
  HomeworkItemModel(
    textColor: appTheme.greenA700,
    chapter: "Chapter 1 ( Exercise 1.1 )",
    marked: "Marked",
    subject: "Gujrati",
    date: "4 Sep, 2023",
  ),
  HomeworkItemModel(
    textColor: Color(0xFFD93636),
    chapter: "Chapter 1 ( Exercise 1.1 )",
    marked: "Not Submited",
    subject: "Gujrati",
    date: "4 Sep, 2023",
  ),
];
