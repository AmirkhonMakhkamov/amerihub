import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'featured_deals_create_widget.dart' show FeaturedDealsCreateWidget;
import 'package:flutter/material.dart';

class FeaturedDealsCreateModel
    extends FlutterFlowModel<FeaturedDealsCreateWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  String? _titleTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for ButtonText widget.
  FocusNode? buttonTextFocusNode1;
  TextEditingController? buttonTextTextController1;
  String? Function(BuildContext, String?)? buttonTextTextController1Validator;
  String? _buttonTextTextController1Validator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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
    titleTextControllerValidator = _titleTextControllerValidator;
    buttonTextTextController1Validator = _buttonTextTextController1Validator;
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
