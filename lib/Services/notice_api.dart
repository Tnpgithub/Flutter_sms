import 'package:student_app/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:student_app/core/app_export.dart';
import 'package:get/get.dart';
import 'dart:convert';
import 'dart:async';
import 'package:student_app/presentation/notice_screen/models/notice_model.dart';

class NoticeApi {
  static Future<List<Notice>> fetchNotices(category, limit, offset) async {
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
      'limit': limit.toString(),
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

        final notices = results.map((e) {
          return Notice(
            title: e['title'],
            description: e['description'],
            date: e['date'],
            date_formatted: e['date_formatted'],
            //photo_url: e['photo_url'].toString(),
          );
        }).toList();

        return notices;

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
    List<Notice> res = [];
    return res;
  }
}
