import '/flutter_flow/flutter_flow_util.dart';
import 'address_checkout_widget.dart' show AddressCheckoutWidget;
import 'package:flutter/material.dart';

class AddressCheckoutModel extends FlutterFlowModel<AddressCheckoutWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
