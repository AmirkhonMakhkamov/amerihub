import '/admin/components/showcase_card_1/showcase_card1_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'entry_widget.dart' show EntryWidget;
import 'package:flutter/material.dart';

class EntryModel extends FlutterFlowModel<EntryWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for ShowcaseCard_1 component.
  late ShowcaseCard1Model showcaseCard1Model1;
  // Model for ShowcaseCard_1 component.
  late ShowcaseCard1Model showcaseCard1Model2;
  // Model for ShowcaseCard_1 component.
  late ShowcaseCard1Model showcaseCard1Model3;
  // Model for ShowcaseCard_1 component.
  late ShowcaseCard1Model showcaseCard1Model4;

  @override
  void initState(BuildContext context) {
    showcaseCard1Model1 = createModel(context, () => ShowcaseCard1Model());
    showcaseCard1Model2 = createModel(context, () => ShowcaseCard1Model());
    showcaseCard1Model3 = createModel(context, () => ShowcaseCard1Model());
    showcaseCard1Model4 = createModel(context, () => ShowcaseCard1Model());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    showcaseCard1Model1.dispose();
    showcaseCard1Model2.dispose();
    showcaseCard1Model3.dispose();
    showcaseCard1Model4.dispose();
  }
}
