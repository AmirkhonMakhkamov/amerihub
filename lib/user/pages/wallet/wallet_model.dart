import '/flutter_flow/flutter_flow_util.dart';
import 'wallet_widget.dart' show WalletWidget;
import 'package:flutter/material.dart';

class WalletModel extends FlutterFlowModel<WalletWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for EnterAmount widget.
  FocusNode? enterAmountFocusNode;
  TextEditingController? enterAmountTextController;
  String? Function(BuildContext, String?)? enterAmountTextControllerValidator;
  String? _enterAmountTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Please enter an amount';
    }

    return null;
  }

  @override
  void initState(BuildContext context) {
    enterAmountTextControllerValidator = _enterAmountTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    enterAmountFocusNode?.dispose();
    enterAmountTextController?.dispose();
  }
}
