import '/flutter_flow/flutter_flow_util.dart';
import 'registration_seller_widget.dart' show RegistrationSellerWidget;
import 'package:flutter/material.dart';

class RegistrationSellerModel
    extends FlutterFlowModel<RegistrationSellerWidget> {
  ///  Local state fields for this page.

  bool basicDetails = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey1 = GlobalKey<FormState>();
  final formKey2 = GlobalKey<FormState>();
  // State field(s) for NameField widget.
  FocusNode? nameFieldFocusNode;
  TextEditingController? nameFieldTextController;
  String? Function(BuildContext, String?)? nameFieldTextControllerValidator;
  String? _nameFieldTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DisplayName widget.
  FocusNode? displayNameFocusNode;
  TextEditingController? displayNameTextController;
  String? Function(BuildContext, String?)? displayNameTextControllerValidator;
  String? _displayNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for BusinessName widget.
  FocusNode? businessNameFocusNode;
  TextEditingController? businessNameTextController;
  String? Function(BuildContext, String?)? businessNameTextControllerValidator;
  String? _businessNameTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Pincode widget.
  FocusNode? pincodeFocusNode;
  TextEditingController? pincodeTextController;
  String? Function(BuildContext, String?)? pincodeTextControllerValidator;
  String? _pincodeTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for MobileNumberField widget.
  FocusNode? mobileNumberFieldFocusNode;
  TextEditingController? mobileNumberFieldTextController;
  String? Function(BuildContext, String?)?
      mobileNumberFieldTextControllerValidator;
  // State field(s) for EmailAddressField widget.
  FocusNode? emailAddressFieldFocusNode;
  TextEditingController? emailAddressFieldTextController;
  String? Function(BuildContext, String?)?
      emailAddressFieldTextControllerValidator;
  // State field(s) for PasswordField widget.
  FocusNode? passwordFieldFocusNode;
  TextEditingController? passwordFieldTextController;
  late bool passwordFieldVisibility;
  String? Function(BuildContext, String?)? passwordFieldTextControllerValidator;

  @override
  void initState(BuildContext context) {
    nameFieldTextControllerValidator = _nameFieldTextControllerValidator;
    displayNameTextControllerValidator = _displayNameTextControllerValidator;
    businessNameTextControllerValidator = _businessNameTextControllerValidator;
    pincodeTextControllerValidator = _pincodeTextControllerValidator;
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFieldFocusNode?.dispose();
    nameFieldTextController?.dispose();

    displayNameFocusNode?.dispose();
    displayNameTextController?.dispose();

    businessNameFocusNode?.dispose();
    businessNameTextController?.dispose();

    pincodeFocusNode?.dispose();
    pincodeTextController?.dispose();

    mobileNumberFieldFocusNode?.dispose();
    mobileNumberFieldTextController?.dispose();

    emailAddressFieldFocusNode?.dispose();
    emailAddressFieldTextController?.dispose();

    passwordFieldFocusNode?.dispose();
    passwordFieldTextController?.dispose();
  }
}
