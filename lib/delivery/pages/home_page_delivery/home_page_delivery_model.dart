import '/delivery/components/header_seller/header_seller_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_delivery_widget.dart' show HomePageDeliveryWidget;
import 'package:flutter/material.dart';

class HomePageDeliveryModel extends FlutterFlowModel<HomePageDeliveryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for Header_Seller component.
  late HeaderSellerModel headerSellerModel;

  @override
  void initState(BuildContext context) {
    headerSellerModel = createModel(context, () => HeaderSellerModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    headerSellerModel.dispose();
  }
}
