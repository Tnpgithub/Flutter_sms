import 'package:student_app/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:student_app/core/app_export.dart';
import 'package:get/get.dart';
import 'package:student_app/presentation/exam_exam_schedule_screen/models/exam_model.dart';
import 'dart:convert';
import 'dart:async';

import 'package:student_app/presentation/leave_screen/models/leave_model.dart';

class ExamApi {
  static Future<List<ExamModel>> fetchExam(category) async {
    print("FetchNotices called");
    var url = Constants.base_url + Constants.endpoint_notices;

    late String token = 'blank';
    final SharedPreferences spref = await SharedPreferences.getInstance();
    token = spref.getString('token') ?? 'blank';

    // Create headers with authorization token
    final Map<String, String> headers = {
      'Authorization': 'Bearer $token',
      'Content-Type': 'application/json', // Set content type if needed
    };

    final baseUrl = Uri.parse(url);

    // Define the query parameters
    var queryParams = {
      'category': category.toString(),
      // Add more query parameters as needed
    };

    // Create a new URI with the query parameters
    var uri = baseUrl.replace(queryParameters: queryParams);

    try {
      final response = await http.get(uri, headers: headers);
      final int statusCode = response.statusCode;
      if (statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['result'] as List<dynamic>;

        final exam = results.map((e) {
          return ExamModel(
            name: e['name'],
            //  pass_marks: e['description'],
            // total_marks: e['datdescriptione'],
            date_formatted: e['date_formatted'],
            time: e['description'],
          );
        }).toList();

        return exam;

        // Process the list of notices
      } else if (statusCode == 401) {
        Get.toNamed(AppRoutes.loginScreen);
      } else {
        // Handle other status codes
        print('HTTP error $statusCode: ${response.reasonPhrase}');
      }
    } catch (error) {
      // Handle errors
      print('Error: $error');
    }
    List<ExamModel> res = [];
    return res;
  }
}
