import '/admin/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/components/nav_menu_seller/nav_menu_seller_widget.dart';
import 'product_report_widget.dart' show ProductReportWidget;
import 'package:flutter/material.dart';

class ProductReportModel extends FlutterFlowModel<ProductReportWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuSeller component.
  late NavMenuSellerModel navMenuSellerModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {
    navMenuSellerModel = createModel(context, () => NavMenuSellerModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navMenuSellerModel.dispose();
    headerModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
