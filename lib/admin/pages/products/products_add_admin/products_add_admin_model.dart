import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'products_add_admin_widget.dart' show ProductsAddAdminWidget;
import 'package:flutter/material.dart';

class ProductsAddAdminModel extends FlutterFlowModel<ProductsAddAdminWidget> {
  ///  Local state fields for this page.

  String? activeTab;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // State field(s) for ProductName widget.
  FocusNode? productNameFocusNode;
  TextEditingController? productNameTextController;
  String? Function(BuildContext, String?)? productNameTextControllerValidator;
  // State field(s) for ProductDescription widget.
  FocusNode? productDescriptionFocusNode;
  TextEditingController? productDescriptionTextController;
  String? Function(BuildContext, String?)?
      productDescriptionTextControllerValidator;
  // State field(s) for SKU widget.
  FocusNode? skuFocusNode;
  TextEditingController? skuTextController;
  String? Function(BuildContext, String?)? skuTextControllerValidator;
  // State field(s) for MinPurchase widget.
  FocusNode? minPurchaseFocusNode;
  TextEditingController? minPurchaseTextController;
  String? Function(BuildContext, String?)? minPurchaseTextControllerValidator;
  // State field(s) for MaxPurchase widget.
  FocusNode? maxPurchaseFocusNode;
  TextEditingController? maxPurchaseTextController;
  String? Function(BuildContext, String?)? maxPurchaseTextControllerValidator;
  // State field(s) for StockQuantity widget.
  FocusNode? stockQuantityFocusNode;
  TextEditingController? stockQuantityTextController;
  String? Function(BuildContext, String?)? stockQuantityTextControllerValidator;
  // State field(s) for StockStatus widget.
  String? stockStatusValue;
  FormFieldController<String>? stockStatusValueController;
  // State field(s) for LowThreshold widget.
  FocusNode? lowThresholdFocusNode;
  TextEditingController? lowThresholdTextController;
  String? Function(BuildContext, String?)? lowThresholdTextControllerValidator;
  // State field(s) for Weight widget.
  FocusNode? weightFocusNode;
  TextEditingController? weightTextController;
  String? Function(BuildContext, String?)? weightTextControllerValidator;
  // State field(s) for EstimatedShipping widget.
  FocusNode? estimatedShippingFocusNode;
  TextEditingController? estimatedShippingTextController;
  String? Function(BuildContext, String?)?
      estimatedShippingTextControllerValidator;
  // State field(s) for length widget.
  FocusNode? lengthFocusNode;
  TextEditingController? lengthTextController;
  String? Function(BuildContext, String?)? lengthTextControllerValidator;
  // State field(s) for width widget.
  FocusNode? widthFocusNode;
  TextEditingController? widthTextController;
  String? Function(BuildContext, String?)? widthTextControllerValidator;
  // State field(s) for height widget.
  FocusNode? heightFocusNode;
  TextEditingController? heightTextController;
  String? Function(BuildContext, String?)? heightTextControllerValidator;
  // State field(s) for ShippingCost widget.
  String? shippingCostValue;
  FormFieldController<String>? shippingCostValueController;
  // State field(s) for SalePrice widget.
  FocusNode? salePriceFocusNode;
  TextEditingController? salePriceTextController;
  String? Function(BuildContext, String?)? salePriceTextControllerValidator;
  // State field(s) for RegularPrice widget.
  FocusNode? regularPriceFocusNode;
  TextEditingController? regularPriceTextController;
  String? Function(BuildContext, String?)? regularPriceTextControllerValidator;
  // State field(s) for Category widget.
  String? categoryValue;
  FormFieldController<String>? categoryValueController;
  // State field(s) for Brand widget.
  String? brandValue;
  FormFieldController<String>? brandValueController;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));
  String uploadedFileUrl = '';

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
    productNameFocusNode?.dispose();
    productNameTextController?.dispose();

    productDescriptionFocusNode?.dispose();
    productDescriptionTextController?.dispose();

    skuFocusNode?.dispose();
    skuTextController?.dispose();

    minPurchaseFocusNode?.dispose();
    minPurchaseTextController?.dispose();

    maxPurchaseFocusNode?.dispose();
    maxPurchaseTextController?.dispose();

    stockQuantityFocusNode?.dispose();
    stockQuantityTextController?.dispose();

    lowThresholdFocusNode?.dispose();
    lowThresholdTextController?.dispose();

    weightFocusNode?.dispose();
    weightTextController?.dispose();

    estimatedShippingFocusNode?.dispose();
    estimatedShippingTextController?.dispose();

    lengthFocusNode?.dispose();
    lengthTextController?.dispose();

    widthFocusNode?.dispose();
    widthTextController?.dispose();

    heightFocusNode?.dispose();
    heightTextController?.dispose();

    salePriceFocusNode?.dispose();
    salePriceTextController?.dispose();

    regularPriceFocusNode?.dispose();
    regularPriceTextController?.dispose();
  }
}
