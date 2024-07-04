import '/admin/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/components/nav_menu_seller/nav_menu_seller_widget.dart';
import 'general_settings_widget.dart' show GeneralSettingsWidget;
import 'package:flutter/material.dart';

class GeneralSettingsModel extends FlutterFlowModel<GeneralSettingsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuSeller component.
  late NavMenuSellerModel navMenuSellerModel;
  // Model for Header component.
  late HeaderModel headerModel;
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
    navMenuSellerModel = createModel(context, () => NavMenuSellerModel());
    headerModel = createModel(context, () => HeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navMenuSellerModel.dispose();
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
