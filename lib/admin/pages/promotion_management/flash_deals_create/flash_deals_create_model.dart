import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'flash_deals_create_widget.dart' show FlashDealsCreateWidget;
import 'package:flutter/material.dart';

class FlashDealsCreateModel extends FlutterFlowModel<FlashDealsCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for ButtonText widget.
  FocusNode? buttonTextFocusNode1;
  TextEditingController? buttonTextTextController1;
  String? Function(BuildContext, String?)? buttonTextTextController1Validator;
  // State field(s) for ButtonText widget.
  FocusNode? buttonTextFocusNode2;
  TextEditingController? buttonTextTextController2;
  String? Function(BuildContext, String?)? buttonTextTextController2Validator;
  // State field(s) for DropDown widget.
  List<String>? dropDownValue;
  FormFieldController<List<String>>? dropDownValueController;

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
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    buttonTextFocusNode1?.dispose();
    buttonTextTextController1?.dispose();

    buttonTextFocusNode2?.dispose();
    buttonTextTextController2?.dispose();
  }
}
