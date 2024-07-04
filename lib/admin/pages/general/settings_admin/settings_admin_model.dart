import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'settings_admin_widget.dart' show SettingsAdminWidget;
import 'package:flutter/material.dart';

class SettingsAdminModel extends FlutterFlowModel<SettingsAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

  // State field(s) for Addressline_1 widget.
  FocusNode? addressline1FocusNode;
  TextEditingController? addressline1TextController;
  String? Function(BuildContext, String?)? addressline1TextControllerValidator;
  // State field(s) for Addressline_2 widget.
  FocusNode? addressline2FocusNode;
  TextEditingController? addressline2TextController;
  String? Function(BuildContext, String?)? addressline2TextControllerValidator;
  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  // State field(s) for Country widget.
  FocusNode? countryFocusNode;
  TextEditingController? countryTextController;
  String? Function(BuildContext, String?)? countryTextControllerValidator;
  // State field(s) for State widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  // State field(s) for Postcode widget.
  FocusNode? postcodeFocusNode;
  TextEditingController? postcodeTextController;
  String? Function(BuildContext, String?)? postcodeTextControllerValidator;

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
    addressline1FocusNode?.dispose();
    addressline1TextController?.dispose();

    addressline2FocusNode?.dispose();
    addressline2TextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    countryFocusNode?.dispose();
    countryTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();

    postcodeFocusNode?.dispose();
    postcodeTextController?.dispose();
  }
}
