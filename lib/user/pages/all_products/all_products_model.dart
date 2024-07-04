import '/flutter_flow/flutter_flow_util.dart';
import 'all_products_widget.dart' show AllProductsWidget;
import 'package:flutter/material.dart';

class AllProductsModel extends FlutterFlowModel<AllProductsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
