import '/admin/components/user_card_1/user_card1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'header_widget.dart' show HeaderWidget;
import 'package:flutter/material.dart';

class HeaderModel extends FlutterFlowModel<HeaderWidget> {
  ///  Local state fields for this component.

  bool mobileSearchBar = false;

  ///  State fields for stateful widgets in this component.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  List<String> simpleSearchResults1 = [];
  // Model for UserCard_1 component.
  late UserCard1Model userCard1Model;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
  List<String> simpleSearchResults2 = [];

  @override
  void initState(BuildContext context) {
    userCard1Model = createModel(context, () => UserCard1Model());
  }

  @override
  void dispose() {
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    userCard1Model.dispose();
    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
