import '/flutter_flow/flutter_flow_util.dart';
import 'order_success_widget.dart' show OrderSuccessWidget;
import 'package:flutter/material.dart';

class OrderSuccessModel extends FlutterFlowModel<OrderSuccessWidget> {
  ///  Local state fields for this page.

  bool orderDetailView = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
