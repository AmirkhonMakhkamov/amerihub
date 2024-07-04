import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'search_result_admin_widget.dart' show SearchResultAdminWidget;
import 'package:flutter/material.dart';

class SearchResultAdminModel extends FlutterFlowModel<SearchResultAdminWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for NavMenuAdmin component.
  late NavMenuAdminModel navMenuAdminModel;
  // Model for Header component.
  late HeaderModel headerModel;

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
  }
}
