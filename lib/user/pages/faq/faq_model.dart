import '/flutter_flow/flutter_flow_util.dart';
import 'faq_widget.dart' show FaqWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class FaqModel extends FlutterFlowModel<FaqWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    expandableExpandableController.dispose();
  }
}
