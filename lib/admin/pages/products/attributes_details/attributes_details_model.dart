import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'attributes_details_widget.dart' show AttributesDetailsWidget;
import 'package:flutter/material.dart';

class AttributesDetailsModel extends FlutterFlowModel<AttributesDetailsWidget> {
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
  // State field(s) for AttributeValue widget.
  FocusNode? attributeValueFocusNode;
  TextEditingController? attributeValueTextController;
  String? Function(BuildContext, String?)?
      attributeValueTextControllerValidator;

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

    attributeValueFocusNode?.dispose();
    attributeValueTextController?.dispose();
  }
}
