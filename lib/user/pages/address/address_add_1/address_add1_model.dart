import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'address_add1_widget.dart' show AddressAdd1Widget;
import 'package:flutter/material.dart';

class AddressAdd1Model extends FlutterFlowModel<AddressAdd1Widget> {
  ///  Local state fields for this page.

  String? addressType = 'HOME';

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for FullName widget.
  FocusNode? fullNameFocusNode;
  TextEditingController? fullNameTextController;
  String? Function(BuildContext, String?)? fullNameTextControllerValidator;
  String? _fullNameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Mobile widget.
  FocusNode? mobileFocusNode;
  TextEditingController? mobileTextController;
  String? Function(BuildContext, String?)? mobileTextControllerValidator;
  String? _mobileTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for AddressLine1 widget.
  FocusNode? addressLine1FocusNode;
  TextEditingController? addressLine1TextController;
  String? Function(BuildContext, String?)? addressLine1TextControllerValidator;
  String? _addressLine1TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for Addressline2 widget.
  FocusNode? addressline2FocusNode;
  TextEditingController? addressline2TextController;
  String? Function(BuildContext, String?)? addressline2TextControllerValidator;
  String? _addressline2TextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for LandMark widget.
  FocusNode? landMarkFocusNode;
  TextEditingController? landMarkTextController;
  String? Function(BuildContext, String?)? landMarkTextControllerValidator;
  String? _landMarkTextControllerValidator(BuildContext context, String? val) {
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

  // State field(s) for City widget.
  FocusNode? cityFocusNode;
  TextEditingController? cityTextController;
  String? Function(BuildContext, String?)? cityTextControllerValidator;
  String? _cityTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for State widget.
  FocusNode? stateFocusNode;
  TextEditingController? stateTextController;
  String? Function(BuildContext, String?)? stateTextControllerValidator;
  String? _stateTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Create Document] action in Button widget.
  AddressesRecord? addressResponse;

  @override
  void initState(BuildContext context) {
    fullNameTextControllerValidator = _fullNameTextControllerValidator;
    mobileTextControllerValidator = _mobileTextControllerValidator;
    addressLine1TextControllerValidator = _addressLine1TextControllerValidator;
    addressline2TextControllerValidator = _addressline2TextControllerValidator;
    landMarkTextControllerValidator = _landMarkTextControllerValidator;
    pincodeTextControllerValidator = _pincodeTextControllerValidator;
    cityTextControllerValidator = _cityTextControllerValidator;
    stateTextControllerValidator = _stateTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    fullNameFocusNode?.dispose();
    fullNameTextController?.dispose();

    mobileFocusNode?.dispose();
    mobileTextController?.dispose();

    addressLine1FocusNode?.dispose();
    addressLine1TextController?.dispose();

    addressline2FocusNode?.dispose();
    addressline2TextController?.dispose();

    landMarkFocusNode?.dispose();
    landMarkTextController?.dispose();

    pincodeFocusNode?.dispose();
    pincodeTextController?.dispose();

    cityFocusNode?.dispose();
    cityTextController?.dispose();

    stateFocusNode?.dispose();
    stateTextController?.dispose();
  }
}
