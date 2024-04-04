import 'package:student_app/core/constants/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:student_app/core/app_export.dart';
import 'package:get/get.dart';
import 'package:student_app/presentation/fees_screen/models/fees_model.dart';
import 'dart:convert';
import 'dart:async';

class FeesApi {
  static Future<List<FeeModel>> fetchFees() async {
    var url = Constants.base_url + Constants.endpoint_fees;

    final SharedPreferences spref = await SharedPreferences.getInstance();
    final String token = spref.getString('token') ?? '';

    try {
      final response = await http.get(
        Uri.parse(url),
        headers: {
          'Authorization': 'Bearer $token',
        },
      );

      final int statusCode = response.statusCode;
      if (statusCode == 200) {
        final body = response.body;
        final json = jsonDecode(body);
        final results = json['result'] as List<dynamic>;

        final fees = results.map((e) {
          final invoiceLines =
              (e['invoice_lines'] as List<dynamic>).map((line) {
            // Parse price_subtotal to double, handle null or invalid values
            double priceSubtotal =
                double.tryParse(line['price_subtotal']?.toString() ?? '') ??
                    0.0;

            return FeeLineModel(
              name: line['name'],
              price_subtotal: priceSubtotal,
              //  price_unit: line['price_unit']?.toDouble() ??
              //      0.0, // Example handling of price_unit
            );
          }).toList();

          // Parse amount_residual to double, handle null or invalid values
          double amountResidual =
              double.tryParse(e['amount_residual']?.toString() ?? '') ?? 0.0;

          return FeeModel(
            fee_structure_name: e['fee_structure_name'],
            invoice_date_due: e['invoice_date_due'],
            amount_residual: amountResidual,
            invoiceLines: invoiceLines,
          );
        }).toList();

        return fees;
      } else if (statusCode == 401) {
        Get.toNamed(AppRoutes.loginScreen);
      } else {
        print('HTTP error $statusCode: ${response.reasonPhrase}');
      }
    } catch (error) {
      print('Error: $error');
    }
    return [];
  }
}
