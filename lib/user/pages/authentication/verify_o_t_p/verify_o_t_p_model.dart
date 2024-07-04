import '/flutter_flow/flutter_flow_util.dart';
import 'verify_o_t_p_widget.dart' show VerifyOTPWidget;
import 'package:flutter/material.dart';

class VerifyOTPModel extends FlutterFlowModel<VerifyOTPWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;

  @override
  void initState(BuildContext context) {
    pinCodeController = TextEditingController();
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    pinCodeController?.dispose();
  }
}
