import '/flutter_flow/flutter_flow_util.dart';
import 'category_filter_widget.dart' show CategoryFilterWidget;
import 'package:flutter/material.dart';

class CategoryFilterModel extends FlutterFlowModel<CategoryFilterWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
