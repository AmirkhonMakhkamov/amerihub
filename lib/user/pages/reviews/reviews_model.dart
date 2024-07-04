import '/flutter_flow/flutter_flow_util.dart';
import '/user/components/rating_bar/rating_bar_widget.dart';
import 'reviews_widget.dart' show ReviewsWidget;
import 'package:flutter/material.dart';

class ReviewsModel extends FlutterFlowModel<ReviewsWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
