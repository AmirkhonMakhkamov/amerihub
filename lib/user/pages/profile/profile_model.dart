import '/components/log_inor_regist_copy_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/user/components/profile_options/profile_options_widget.dart';
import 'profile_widget.dart' show ProfileWidget;
import 'package:flutter/material.dart';

class ProfileModel extends FlutterFlowModel<ProfileWidget> {
  ///  Local state fields for this page.

  bool re = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LogInorRegistCopyCopy component.
  late LogInorRegistCopyCopyModel logInorRegistCopyCopyModel;
  // Model for ProfileOptions component.
  late ProfileOptionsModel profileOptionsModel1;
  // Model for ProfileOptions component.
  late ProfileOptionsModel profileOptionsModel2;
  // Model for ProfileOptions component.
  late ProfileOptionsModel profileOptionsModel3;
  // Model for ProfileOptions component.
  late ProfileOptionsModel profileOptionsModel4;
  // Model for ProfileOptions component.
  late ProfileOptionsModel profileOptionsModel5;

  @override
  void initState(BuildContext context) {
    logInorRegistCopyCopyModel =
        createModel(context, () => LogInorRegistCopyCopyModel());
    profileOptionsModel1 = createModel(context, () => ProfileOptionsModel());
    profileOptionsModel2 = createModel(context, () => ProfileOptionsModel());
    profileOptionsModel3 = createModel(context, () => ProfileOptionsModel());
    profileOptionsModel4 = createModel(context, () => ProfileOptionsModel());
    profileOptionsModel5 = createModel(context, () => ProfileOptionsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    logInorRegistCopyCopyModel.dispose();
    profileOptionsModel1.dispose();
    profileOptionsModel2.dispose();
    profileOptionsModel3.dispose();
    profileOptionsModel4.dispose();
    profileOptionsModel5.dispose();
  }
}
