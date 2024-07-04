import '/components/log_inor_regist_copy_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'wishlist_widget.dart' show WishlistWidget;
import 'package:flutter/material.dart';

class WishlistModel extends FlutterFlowModel<WishlistWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LogInorRegistCopyCopy component.
  late LogInorRegistCopyCopyModel logInorRegistCopyCopyModel;

  @override
  void initState(BuildContext context) {
    logInorRegistCopyCopyModel =
        createModel(context, () => LogInorRegistCopyCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    logInorRegistCopyCopyModel.dispose();
  }
}
