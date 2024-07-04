import '/admin/components/header/header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/seller/components/nav_menu_seller/nav_menu_seller_widget.dart';
import 'business_details_widget.dart' show BusinessDetailsWidget;
import 'package:flutter/material.dart';

class BusinessDetailsModel extends FlutterFlowModel<BusinessDetailsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for NavMenuSeller component.
  late NavMenuSellerModel navMenuSellerModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for BankName widget.
  FocusNode? bankNameFocusNode1;
  TextEditingController? bankNameTextController1;
  String? Function(BuildContext, String?)? bankNameTextController1Validator;
  String? _bankNameTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  bool isDataUploading1 = false;
  FFUploadedFile uploadedLocalFile1 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl1 = '';

  // State field(s) for BankName widget.
  FocusNode? bankNameFocusNode2;
  TextEditingController? bankNameTextController2;
  String? Function(BuildContext, String?)? bankNameTextController2Validator;
  bool isDataUploading2 = false;
  FFUploadedFile uploadedLocalFile2 =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl2 = '';

  // State field(s) for Addressline_1 widget.
  FocusNode? addressline1FocusNode1;
  TextEditingController? addressline1TextController1;
  String? Function(BuildContext, String?)? addressline1TextController1Validator;
  // State field(s) for Addressline_2 widget.
  FocusNode? addressline2FocusNode1;
  TextEditingController? addressline2TextController1;
  String? Function(BuildContext, String?)? addressline2TextController1Validator;
  // State field(s) for Addressline_1 widget.
  FocusNode? addressline1FocusNode2;
  TextEditingController? addressline1TextController2;
  String? Function(BuildContext, String?)? addressline1TextController2Validator;
  // State field(s) for Addressline_2 widget.
  FocusNode? addressline2FocusNode2;
  TextEditingController? addressline2TextController2;
  String? Function(BuildContext, String?)? addressline2TextController2Validator;
  // State field(s) for Addressline_1 widget.
  FocusNode? addressline1FocusNode3;
  TextEditingController? addressline1TextController3;
  String? Function(BuildContext, String?)? addressline1TextController3Validator;
  // State field(s) for Addressline_2 widget.
  FocusNode? addressline2FocusNode3;
  TextEditingController? addressline2TextController3;
  String? Function(BuildContext, String?)? addressline2TextController3Validator;

  @override
  void initState(BuildContext context) {
    navMenuSellerModel = createModel(context, () => NavMenuSellerModel());
    headerModel = createModel(context, () => HeaderModel());
    bankNameTextController1Validator = _bankNameTextController1Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navMenuSellerModel.dispose();
    headerModel.dispose();
    bankNameFocusNode1?.dispose();
    bankNameTextController1?.dispose();

    bankNameFocusNode2?.dispose();
    bankNameTextController2?.dispose();

    addressline1FocusNode1?.dispose();
    addressline1TextController1?.dispose();

    addressline2FocusNode1?.dispose();
    addressline2TextController1?.dispose();

    addressline1FocusNode2?.dispose();
    addressline1TextController2?.dispose();

    addressline2FocusNode2?.dispose();
    addressline2TextController2?.dispose();

    addressline1FocusNode3?.dispose();
    addressline1TextController3?.dispose();

    addressline2FocusNode3?.dispose();
    addressline2TextController3?.dispose();
  }
}
