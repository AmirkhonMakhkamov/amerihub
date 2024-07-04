import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'announcement_widget.dart' show AnnouncementWidget;
import 'package:flutter/material.dart';

class AnnouncementModel extends FlutterFlowModel<AnnouncementWidget> {
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

  // State field(s) for Details widget.
  FocusNode? detailsFocusNode;
  TextEditingController? detailsTextController;
  String? Function(BuildContext, String?)? detailsTextControllerValidator;
  String? _detailsTextControllerValidator(BuildContext context, String? val) {
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
  FocusNode? buttonTextFocusNode;
  TextEditingController? buttonTextTextController;
  String? Function(BuildContext, String?)? buttonTextTextControllerValidator;
  String? _buttonTextTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ButtonColor widget.
  FocusNode? buttonColorFocusNode;
  TextEditingController? buttonColorTextController;
  String? Function(BuildContext, String?)? buttonColorTextControllerValidator;
  Color? colorPicked1;
  Color? colorPicked2;
  // State field(s) for Link widget.
  FocusNode? linkFocusNode;
  TextEditingController? linkTextController;
  String? Function(BuildContext, String?)? linkTextControllerValidator;

  @override
  void initState(BuildContext context) {
    navMenuAdminModel = createModel(context, () => NavMenuAdminModel());
    headerModel = createModel(context, () => HeaderModel());
    titleTextControllerValidator = _titleTextControllerValidator;
    detailsTextControllerValidator = _detailsTextControllerValidator;
    buttonTextTextControllerValidator = _buttonTextTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navMenuAdminModel.dispose();
    headerModel.dispose();
    titleFocusNode?.dispose();
    titleTextController?.dispose();

    detailsFocusNode?.dispose();
    detailsTextController?.dispose();

    buttonTextFocusNode?.dispose();
    buttonTextTextController?.dispose();

    buttonColorFocusNode?.dispose();
    buttonColorTextController?.dispose();

    linkFocusNode?.dispose();
    linkTextController?.dispose();
  }
}
