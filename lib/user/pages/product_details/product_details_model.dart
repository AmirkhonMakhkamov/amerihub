import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user/components/rating_bar/rating_bar_widget.dart';
import 'product_details_widget.dart' show ProductDetailsWidget;
import 'package:flutter/material.dart';

class ProductDetailsModel extends FlutterFlowModel<ProductDetailsWidget> {
  ///  Local state fields for this page.

  VariantCheckoutStruct? variant;
  void updateVariantStruct(Function(VariantCheckoutStruct) updateFn) {
    updateFn(variant ??= VariantCheckoutStruct());
  }

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Read Document] action in ProductDetails widget.
  ProductsRecord? defaultVariant;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;
  // Model for RatingBar component.
  late RatingBarModel ratingBarModel1;
  // Model for RatingBar component.
  late RatingBarModel ratingBarModel2;
  // Model for RatingBar component.
  late RatingBarModel ratingBarModel3;
  // Model for RatingBar component.
  late RatingBarModel ratingBarModel4;
  // Model for RatingBar component.
  late RatingBarModel ratingBarModel5;

  @override
  void initState(BuildContext context) {
    ratingBarModel1 = createModel(context, () => RatingBarModel());
    ratingBarModel2 = createModel(context, () => RatingBarModel());
    ratingBarModel3 = createModel(context, () => RatingBarModel());
    ratingBarModel4 = createModel(context, () => RatingBarModel());
    ratingBarModel5 = createModel(context, () => RatingBarModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    ratingBarModel1.dispose();
    ratingBarModel2.dispose();
    ratingBarModel3.dispose();
    ratingBarModel4.dispose();
    ratingBarModel5.dispose();
  }
}
