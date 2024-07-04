import '/admin/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/components/nav_menu_seller/nav_menu_seller_widget.dart';
import 'bank_details_widget.dart' show BankDetailsWidget;
import 'package:flutter/material.dart';

class BankDetailsModel extends FlutterFlowModel<BankDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for NavMenuSeller component.
  late NavMenuSellerModel navMenuSellerModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for BankName widget.
  FocusNode? bankNameFocusNode;
  TextEditingController? bankNameTextController;
  String? Function(BuildContext, String?)? bankNameTextControllerValidator;
  String? _bankNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for AccountNo widget.
  FocusNode? accountNoFocusNode;
  TextEditingController? accountNoTextController;
  String? Function(BuildContext, String?)? accountNoTextControllerValidator;
  String? _accountNoTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for AccountHolder widget.
  FocusNode? accountHolderFocusNode;
  TextEditingController? accountHolderTextController;
  String? Function(BuildContext, String?)? accountHolderTextControllerValidator;
  // State field(s) for IFSC widget.
  FocusNode? ifscFocusNode;
  TextEditingController? ifscTextController;
  String? Function(BuildContext, String?)? ifscTextControllerValidator;

  @override
  void initState(BuildContext context) {
    navMenuSellerModel = createModel(context, () => NavMenuSellerModel());
    headerModel = createModel(context, () => HeaderModel());
    bankNameTextControllerValidator = _bankNameTextControllerValidator;
    accountNoTextControllerValidator = _accountNoTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navMenuSellerModel.dispose();
    headerModel.dispose();
    bankNameFocusNode?.dispose();
    bankNameTextController?.dispose();

    accountNoFocusNode?.dispose();
    accountNoTextController?.dispose();

    accountHolderFocusNode?.dispose();
    accountHolderTextController?.dispose();

    ifscFocusNode?.dispose();
    ifscTextController?.dispose();
  }
}
