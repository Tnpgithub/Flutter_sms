import 'dart:async';
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:student_app/core/app_export.dart';
import 'package:student_app/core/constants/constants.dart';
import 'package:student_app/presentation/leave_screen/models/leave_model.dart';

class LeaveApi {
  static Future<List<LeaveModel>> fetchleave() async {
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

    try {
      final response = await http.get(baseUrl, headers: headers);
      final int statusCode = response.statusCode;
      if (statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['result'] as List<dynamic>;

        final leave = results.map((e) {
          return LeaveModel(
            name: e['name'],
            date_formatted: e['date_formatted'],
            description: e['description'],
          );
        }).toList();

        return leave;
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
    List<LeaveModel> res = [];
    return res;
  }
}
