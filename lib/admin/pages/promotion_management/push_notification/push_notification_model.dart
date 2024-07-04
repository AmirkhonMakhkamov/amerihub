import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'push_notification_widget.dart' show PushNotificationWidget;
import 'package:flutter/material.dart';

class PushNotificationModel extends FlutterFlowModel<PushNotificationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for Title widget.
  FocusNode? titleFocusNode1;
  TextEditingController? titleTextController1;
  String? Function(BuildContext, String?)? titleTextController1Validator;
  String? _titleTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Title widget.
  FocusNode? titleFocusNode2;
  TextEditingController? titleTextController2;
  String? Function(BuildContext, String?)? titleTextController2Validator;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController3;
  String? Function(BuildContext, String?)? textController3Validator;

  @override
  void initState(BuildContext context) {
    navMenuAdminModel = createModel(context, () => NavMenuAdminModel());
    headerModel = createModel(context, () => HeaderModel());
    titleTextController1Validator = _titleTextController1Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navMenuAdminModel.dispose();
    headerModel.dispose();
    titleFocusNode1?.dispose();
    titleTextController1?.dispose();

    titleFocusNode2?.dispose();
    titleTextController2?.dispose();

    textFieldFocusNode?.dispose();
    textController3?.dispose();
  }
}
