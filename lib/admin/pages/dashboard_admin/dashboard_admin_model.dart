import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/admin/components/rating_bar_item/rating_bar_item_widget.dart';
import '/admin/components/sales_card/sales_card_widget.dart';
import '/admin/components/sales_card_2/sales_card2_widget.dart';
import '/admin/components/stat_card/stat_card_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'dashboard_admin_widget.dart' show DashboardAdminWidget;
import 'package:flutter/material.dart';

class DashboardAdminModel extends FlutterFlowModel<DashboardAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;
  // Model for StatCard component.
  late StatCardModel statCardModel1;
  // Model for StatCard component.
  late StatCardModel statCardModel2;
  // Model for StatCard component.
  late StatCardModel statCardModel3;
  // Model for StatCard component.
  late StatCardModel statCardModel4;
  // Model for SalesCard component.
  late SalesCardModel salesCardModel;
  // Model for SalesCard_2 component.
  late SalesCard2Model salesCard2Model;
  Completer<List<ReviewsRecord>>? firestoreRequestCompleter;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel1;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel2;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel3;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel4;
  // Model for RatingBarItem component.
  late RatingBarItemModel ratingBarItemModel5;

  @override
  void initState(BuildContext context) {
    navMenuAdminModel = createModel(context, () => NavMenuAdminModel());
    headerModel = createModel(context, () => HeaderModel());
    statCardModel1 = createModel(context, () => StatCardModel());
    statCardModel2 = createModel(context, () => StatCardModel());
    statCardModel3 = createModel(context, () => StatCardModel());
    statCardModel4 = createModel(context, () => StatCardModel());
    salesCardModel = createModel(context, () => SalesCardModel());
    salesCard2Model = createModel(context, () => SalesCard2Model());
    ratingBarItemModel1 = createModel(context, () => RatingBarItemModel());
    ratingBarItemModel2 = createModel(context, () => RatingBarItemModel());
    ratingBarItemModel3 = createModel(context, () => RatingBarItemModel());
    ratingBarItemModel4 = createModel(context, () => RatingBarItemModel());
    ratingBarItemModel5 = createModel(context, () => RatingBarItemModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    navMenuAdminModel.dispose();
    headerModel.dispose();
    statCardModel1.dispose();
    statCardModel2.dispose();
    statCardModel3.dispose();
    statCardModel4.dispose();
    salesCardModel.dispose();
    salesCard2Model.dispose();
    ratingBarItemModel1.dispose();
    ratingBarItemModel2.dispose();
    ratingBarItemModel3.dispose();
    ratingBarItemModel4.dispose();
    ratingBarItemModel5.dispose();
  }

  /// Additional helper methods.
  Future waitForFirestoreRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = firestoreRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
