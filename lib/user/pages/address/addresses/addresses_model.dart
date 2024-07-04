import '/flutter_flow/flutter_flow_util.dart';
import '/user/components/empty_views/address_empty/address_empty_widget.dart';
import 'addresses_widget.dart' show AddressesWidget;
import 'package:flutter/material.dart';

class AddressesModel extends FlutterFlowModel<AddressesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for AddressEmpty component.
  late AddressEmptyModel addressEmptyModel;

  @override
  void initState(BuildContext context) {
    addressEmptyModel = createModel(context, () => AddressEmptyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    addressEmptyModel.dispose();
  }
}
