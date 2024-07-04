import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'order_details_admin_widget.dart' show OrderDetailsAdminWidget;
import 'package:flutter/material.dart';

class OrderDetailsAdminModel extends FlutterFlowModel<OrderDetailsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for DropDown widget.
  String? dropDownValue1;
  FormFieldController<String>? dropDownValueController1;
  // State field(s) for DropDown widget.
  String? dropDownValue2;
  FormFieldController<String>? dropDownValueController2;

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
  }
}
