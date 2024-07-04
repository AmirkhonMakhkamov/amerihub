import '/flutter_flow/flutter_flow_util.dart';
import 'passbook_widget.dart' show PassbookWidget;
import 'package:flutter/material.dart';

class PassbookModel extends FlutterFlowModel<PassbookWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
