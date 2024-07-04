import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'attributes_admin_widget.dart' show AttributesAdminWidget;
import 'package:flutter/material.dart';

class AttributesAdminModel extends FlutterFlowModel<AttributesAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for AttributeName widget.
  FocusNode? attributeNameFocusNode;
  TextEditingController? attributeNameTextController;
  String? Function(BuildContext, String?)? attributeNameTextControllerValidator;

  @override
  void initState(BuildContext context) {
    navMenuAdminModel = createModel(context, () => NavMenuAdminModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navMenuAdminModel.dispose();
    headerModel.dispose();
    attributeNameFocusNode?.dispose();
    attributeNameTextController?.dispose();
  }
}
