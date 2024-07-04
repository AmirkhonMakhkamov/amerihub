import '/admin/components/nav_menu/menu_option/menu_option_widget.dart';
import '/admin/components/nav_menu/menu_option_x/menu_option_x_widget.dart';
import '/admin/components/nav_menu/sub_menu_option/sub_menu_option_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nav_menu_seller_widget.dart' show NavMenuSellerWidget;
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';

class NavMenuSellerModel extends FlutterFlowModel<NavMenuSellerWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for MenuOption component.
  late MenuOptionModel menuOptionModel1;
  // State field(s) for Products widget.
  bool productsHovered = false;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController1;

  // Model for MenuOptionX component.
  late MenuOptionXModel menuOptionXModel1;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel1;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel2;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel3;
  // Model for MenuOption component.
  late MenuOptionModel menuOptionModel2;
  // Model for MenuOption component.
  late MenuOptionModel menuOptionModel3;
  // Model for MenuOption component.
  late MenuOptionModel menuOptionModel4;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController2;

  // Model for MenuOptionX component.
  late MenuOptionXModel menuOptionXModel2;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel4;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel5;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel6;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController3;

  // Model for MenuOptionX component.
  late MenuOptionXModel menuOptionXModel3;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel7;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel8;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel9;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController4;

  // Model for MenuOptionX component.
  late MenuOptionXModel menuOptionXModel4;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel10;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel11;
  // State field(s) for Expandable widget.
  late ExpandableController expandableExpandableController5;

  // Model for MenuOptionX component.
  late MenuOptionXModel menuOptionXModel5;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel12;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel13;
  // Model for SubMenuOption component.
  late SubMenuOptionModel subMenuOptionModel14;

  @override
  void initState(BuildContext context) {
    menuOptionModel1 = createModel(context, () => MenuOptionModel());
    menuOptionXModel1 = createModel(context, () => MenuOptionXModel());
    subMenuOptionModel1 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel2 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel3 = createModel(context, () => SubMenuOptionModel());
    menuOptionModel2 = createModel(context, () => MenuOptionModel());
    menuOptionModel3 = createModel(context, () => MenuOptionModel());
    menuOptionModel4 = createModel(context, () => MenuOptionModel());
    menuOptionXModel2 = createModel(context, () => MenuOptionXModel());
    subMenuOptionModel4 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel5 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel6 = createModel(context, () => SubMenuOptionModel());
    menuOptionXModel3 = createModel(context, () => MenuOptionXModel());
    subMenuOptionModel7 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel8 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel9 = createModel(context, () => SubMenuOptionModel());
    menuOptionXModel4 = createModel(context, () => MenuOptionXModel());
    subMenuOptionModel10 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel11 = createModel(context, () => SubMenuOptionModel());
    menuOptionXModel5 = createModel(context, () => MenuOptionXModel());
    subMenuOptionModel12 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel13 = createModel(context, () => SubMenuOptionModel());
    subMenuOptionModel14 = createModel(context, () => SubMenuOptionModel());
  }

  @override
  void dispose() {
    menuOptionModel1.dispose();
    expandableExpandableController1.dispose();
    menuOptionXModel1.dispose();
    subMenuOptionModel1.dispose();
    subMenuOptionModel2.dispose();
    subMenuOptionModel3.dispose();
    menuOptionModel2.dispose();
    menuOptionModel3.dispose();
    menuOptionModel4.dispose();
    expandableExpandableController2.dispose();
    menuOptionXModel2.dispose();
    subMenuOptionModel4.dispose();
    subMenuOptionModel5.dispose();
    subMenuOptionModel6.dispose();
    expandableExpandableController3.dispose();
    menuOptionXModel3.dispose();
    subMenuOptionModel7.dispose();
    subMenuOptionModel8.dispose();
    subMenuOptionModel9.dispose();
    expandableExpandableController4.dispose();
    menuOptionXModel4.dispose();
    subMenuOptionModel10.dispose();
    subMenuOptionModel11.dispose();
    expandableExpandableController5.dispose();
    menuOptionXModel5.dispose();
    subMenuOptionModel12.dispose();
    subMenuOptionModel13.dispose();
    subMenuOptionModel14.dispose();
  }
}
