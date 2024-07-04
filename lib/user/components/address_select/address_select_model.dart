import '/flutter_flow/flutter_flow_util.dart';
import 'address_select_widget.dart' show AddressSelectWidget;
import 'package:flutter/material.dart';

class AddressSelectModel extends FlutterFlowModel<AddressSelectWidget> {
  ///  Local state fields for this component.

  bool pincodeValid = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
