import 'package:intl/date_symbol_data_local.dart';import 'package:intl/intl.dart';const String dateTimeFormatPattern = 'dd/MM/yyyy';
const String MEDIUM_DATE_FORMAT = 'dd MMM yyyy';
extension DateTimeExtension on DateTime {String format([String pattern = dateTimeFormatPattern, String? locale, ]) { if (locale != null && locale.isNotEmpty) {initializeDateFormatting(locale);} return DateFormat(pattern, locale).format(this); } 
 }
