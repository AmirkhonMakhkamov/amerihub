import '/components/log_inor_regist_copy_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_page_widget.dart' show HomePageWidget;
import 'package:flutter/material.dart';

class HomePageModel extends FlutterFlowModel<HomePageWidget> {
  ///  Local state fields for this page.

  bool loginPrompt = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for LogInorRegistCopy component.
  late LogInorRegistCopyModel logInorRegistCopyModel;
  // State field(s) for PageView widget.
  PageController? pageViewController;

  int get pageViewCurrentIndex => pageViewController != null &&
          pageViewController!.hasClients &&
          pageViewController!.page != null
      ? pageViewController!.page!.round()
      : 0;

  @override
  void initState(BuildContext context) {
    logInorRegistCopyModel =
        createModel(context, () => LogInorRegistCopyModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    logInorRegistCopyModel.dispose();
  }
}
