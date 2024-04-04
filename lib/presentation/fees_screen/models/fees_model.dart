// class FeeModel {
//   final String fee_structure_name;
//   final String invoice_date_due;
//   final double? amount_residual;
//   final String name;
//   final double? price_subtotal;
//   final double? price_unit;

//   FeeModel({
//     required this.fee_structure_name,
//     required this.invoice_date_due,
//     required this.amount_residual,
//     required this.name,
//     required this.price_subtotal,
//     required this.price_unit,
//   });
// }

class FeeLineModel {
  final String name;
  final double price_subtotal;
//  final double price_unit;

  FeeLineModel({
    required this.name,
    required this.price_subtotal,
    // required this.price_unit,
  });
}

class FeeModel {
  final String fee_structure_name;
  final String invoice_date_due;
  final double amount_residual;
  // final double payment_state;
  final List<FeeLineModel> invoiceLines;

  FeeModel({
    required this.fee_structure_name,
    required this.invoice_date_due,
    required this.amount_residual,
    // required this.payment_state,
    required this.invoiceLines,
  });
}
