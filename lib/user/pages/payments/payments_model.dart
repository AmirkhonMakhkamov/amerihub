import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'payments_widget.dart' show PaymentsWidget;
import 'package:flutter/material.dart';

class PaymentsModel extends FlutterFlowModel<PaymentsWidget> {
  ///  Local state fields for this page.

  String? paymentMethod;

  int loop = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - orderGenerator] action in Button widget.
  String? generatedOrderId;
  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  OrdersRecord? createdOrder;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
