import '/admin/components/nav_menu/menu_option/menu_option_widget.dart';
import '/admin/components/nav_menu/menu_option_x/menu_option_x_widget.dart';
import '/admin/components/nav_menu/sub_menu_option/sub_menu_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'nav_menu_admin_model.dart';
export 'nav_menu_admin_model.dart';

class NavMenuAdminWidget extends StatefulWidget {
  const NavMenuAdminWidget({super.key});

  @override
  State<NavMenuAdminWidget> createState() => _NavMenuAdminWidgetState();
}

class _NavMenuAdminWidgetState extends State<NavMenuAdminWidget> {
  late NavMenuAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavMenuAdminModel());

    _model.expandableExpandableController1 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController2 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController3 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController4 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController5 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController6 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController7 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController8 =
        ExpandableController(initialExpanded: false);
    _model.expandableExpandableController9 =
        ExpandableController(initialExpanded: false);
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Visibility(
      visible: responsiveVisibility(
        context: context,
        phone: false,
        tablet: false,
        tabletLandscape: false,
      ),
      child: Container(
        width: 240.0,
        height: double.infinity,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).secondaryBackgroundALT,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            InkWell(
              splashColor: Colors.transparent,
              focusColor: Colors.transparent,
              hoverColor: Colors.transparent,
              highlightColor: Colors.transparent,
              onTap: () async {
                if (Navigator.of(context).canPop()) {
                  context.pop();
                }
                context.pushNamed(
                  'Dashboard_Admin',
                  extra: <String, dynamic>{
                    kTransitionInfoKey: const TransitionInfo(
                      hasTransition: true,
                      transitionType: PageTransitionType.fade,
                    ),
                  },
                );
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SvgPicture.asset(
                  'assets/images/Vertical.svg',
                  height: 36.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'MENU',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans HK',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryBackground,
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(width: 12.0))
                                .addToStart(const SizedBox(width: 24.0)),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel1,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Dashboard',
                            active: FFAppState().activePage == 'Dashboard',
                            iconActive: Icon(
                              FFIcons.kgridOutline,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kgridOutline,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Dashboard_Admin',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            setState(() => _model.productsHovered = true);
                          }),
                          onExit: ((event) async {
                            setState(() => _model.productsHovered = false);
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                () {
                                  if ((FFAppState().activePage ==
                                          'Add New Product') ||
                                      (FFAppState().activePage == 'Products') ||
                                      (FFAppState().activePage ==
                                          'Categories') ||
                                      (FFAppState().activePage == 'Brands') ||
                                      (FFAppState().activePage ==
                                          'Attributes')) {
                                    return FlutterFlowTheme.of(context)
                                        .secondary;
                                  } else if (_model.productsHovered) {
                                    return FlutterFlowTheme.of(context)
                                        .tertiaryBackgroundALT;
                                  } else {
                                    return FlutterFlowTheme.of(context)
                                        .secondaryBackgroundALT;
                                  }
                                }(),
                                FlutterFlowTheme.of(context)
                                    .secondaryBackgroundALT,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController1,
                                child: ExpandablePanel(
                                  header: wrapWithModel(
                                    model: _model.menuOptionXModel1,
                                    updateCallback: () => setState(() {}),
                                    child: MenuOptionXWidget(
                                      title: 'Products',
                                      active:
                                          FFAppState().activePage == 'Products',
                                      iconActive: Icon(
                                        FFIcons.kcube,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      iconInactive: Icon(
                                        FFIcons.kcube,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.0,
                                    height: 0.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  expanded: Container(
                                    width: double.infinity,
                                    decoration: BoxDecoration(
                                      color: valueOrDefault<Color>(
                                        (FFAppState().activePage ==
                                                    'Add New Product') ||
                                                (FFAppState().activePage ==
                                                    'Products') ||
                                                (FFAppState().activePage ==
                                                    'Categories') ||
                                                (FFAppState().activePage ==
                                                    'Brands') ||
                                                (FFAppState().activePage ==
                                                    'Attributes')
                                            ? FlutterFlowTheme.of(context)
                                                .quaternaryBackground
                                            : FlutterFlowTheme.of(context)
                                                .secondaryBackgroundALT,
                                        FlutterFlowTheme.of(context)
                                            .secondaryBackgroundALT,
                                      ),
                                    ),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        wrapWithModel(
                                          model: _model.subMenuOptionModel1,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            title: 'Add New',
                                            active: FFAppState().activePage ==
                                                'Add New Product',
                                            lastOption: false,
                                            navigateAction: () async {},
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subMenuOptionModel2,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            title: 'All Products',
                                            active: FFAppState().activePage ==
                                                'All Products',
                                            lastOption: false,
                                            navigateAction: () async {},
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subMenuOptionModel3,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            title: 'Categories',
                                            active: FFAppState().activePage ==
                                                'Categories',
                                            lastOption: false,
                                            navigateAction: () async {},
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subMenuOptionModel4,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            title: 'Brands',
                                            active: FFAppState().activePage ==
                                                'Brands',
                                            lastOption: false,
                                            navigateAction: () async {},
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subMenuOptionModel5,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            title: 'Attributes',
                                            active: FFAppState().activePage ==
                                                'Attributes',
                                            lastOption: true,
                                            navigateAction: () async {},
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: true,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 20.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconPadding: const EdgeInsets.fromLTRB(
                                        12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel2,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Orders',
                            active: FFAppState().activePage == 'Dashboard',
                            iconActive: Icon(
                              FFIcons.kshoppingBag,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kshoppingBag,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Orders_Admin',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel3,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Refunds',
                            active: FFAppState().activePage == 'Dashboard',
                            iconActive: Icon(
                              FFIcons.kreceiptRefund,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kreceiptRefund,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Refunds_Admin',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel4,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Reviews',
                            active: FFAppState().activePage == 'Dashboard',
                            iconActive: Icon(
                              FFIcons.kchatBubbleOvalLeftEllipsis,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kchatBubbleOvalLeftEllipsis,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Reviews_Admin',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            setState(() => _model.mouseRegionHovered1 = true);
                          }),
                          onExit: ((event) async {
                            setState(() => _model.mouseRegionHovered1 = false);
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                (FFAppState().activePage == 'Analytics') ||
                                        (FFAppState().activePage ==
                                            'Product Analytics') ||
                                        (FFAppState().activePage ==
                                            'Order Analytics') ||
                                        (FFAppState().activePage ==
                                            'Category Analytics')
                                    ? FlutterFlowTheme.of(context)
                                        .quaternaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackgroundALT,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackgroundALT,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController2,
                                child: ExpandablePanel(
                                  header: wrapWithModel(
                                    model: _model.menuOptionXModel2,
                                    updateCallback: () => setState(() {}),
                                    child: MenuOptionXWidget(
                                      title: 'Analytics',
                                      active: FFAppState().activePage ==
                                          'Analytics',
                                      iconActive: Icon(
                                        FFIcons.kpieChartOutline,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      iconInactive: Icon(
                                        FFIcons.kpieChartOutline,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.0,
                                    height: 0.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel6,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Overview',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel7,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Products',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel8,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Orders',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel9,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Categories',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: true,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: true,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 20.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconPadding: const EdgeInsets.fromLTRB(
                                        12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            setState(() => _model.mouseRegionHovered2 = true);
                          }),
                          onExit: ((event) async {
                            setState(() => _model.mouseRegionHovered2 = false);
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                (FFAppState().activePage == 'Stock Reports') ||
                                        (FFAppState().activePage ==
                                            'Order Reports') ||
                                        (FFAppState().activePage ==
                                            'Inhouse Sale Reports') ||
                                        (FFAppState().activePage ==
                                            'Seller Sale Reports') ||
                                        (FFAppState().activePage ==
                                            'Transaction Reports')
                                    ? FlutterFlowTheme.of(context)
                                        .quaternaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackgroundALT,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackgroundALT,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController3,
                                child: ExpandablePanel(
                                  header: wrapWithModel(
                                    model: _model.menuOptionXModel3,
                                    updateCallback: () => setState(() {}),
                                    child: MenuOptionXWidget(
                                      title: 'Reports',
                                      active:
                                          FFAppState().activePage == 'Reports',
                                      iconActive: Icon(
                                        FFIcons.kpresentationChartLine,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      iconInactive: Icon(
                                        FFIcons.kpresentationChartLine,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.0,
                                    height: 0.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel10,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Stocks',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel11,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Orders',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel12,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Inhouse Sales',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel13,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Seller Sales',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel14,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Transactions',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: true,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: true,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 20.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconPadding: const EdgeInsets.fromLTRB(
                                        12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel5,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Media',
                            active: FFAppState().activePage == 'Dashboard',
                            iconActive: Icon(
                              FFIcons.kphoto,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kphoto,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Media_Admin',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'PROMOTIONAL MANAGEMENT',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans HK',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryBackground,
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(width: 12.0))
                                .addToStart(const SizedBox(width: 24.0)),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel6,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Banner',
                            active: FFAppState().activePage == 'Dashboard',
                            iconActive: Icon(
                              FFIcons.kphoto,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kphoto,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Banners',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            setState(() => _model.mouseRegionHovered3 = true);
                          }),
                          onExit: ((event) async {
                            setState(() => _model.mouseRegionHovered3 = false);
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                (FFAppState().activePage == 'Offer & Deals') ||
                                        (FFAppState().activePage ==
                                            'Coupons') ||
                                        (FFAppState().activePage ==
                                            'Flash Deals') ||
                                        (FFAppState().activePage ==
                                            'Featured Deals') ||
                                        (FFAppState().activePage ==
                                            'Deal of the day')
                                    ? FlutterFlowTheme.of(context)
                                        .quaternaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackgroundALT,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackgroundALT,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController4,
                                child: ExpandablePanel(
                                  header: wrapWithModel(
                                    model: _model.menuOptionXModel4,
                                    updateCallback: () => setState(() {}),
                                    child: MenuOptionXWidget(
                                      title: 'Offers & Deals',
                                      active: FFAppState().activePage ==
                                          'Analytics',
                                      iconActive: Icon(
                                        FFIcons.kbuildingStorefront,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      iconInactive: Icon(
                                        FFIcons.kbuildingStorefront,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.0,
                                    height: 0.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel15,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Coupons',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel16,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Flash Deals',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel17,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Featured Deals',
                                          active: FFAppState().activePage ==
                                              'Add New Product',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel18,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Deal of The Day',
                                          active: FFAppState().activePage ==
                                              'Deal of The Day',
                                          lastOption: true,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: true,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 20.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconPadding: const EdgeInsets.fromLTRB(
                                        12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel7,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Push Notifications',
                            active: FFAppState().activePage == 'Dashboard',
                            iconActive: Icon(
                              FFIcons.kphoto,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kphoto,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'PushNotification',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel8,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Announcements',
                            active: FFAppState().activePage == 'Dashboard',
                            iconActive: Icon(
                              FFIcons.kphoto,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kphoto,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Announcement',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'USER MANAGEMENT',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans HK',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryBackground,
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(width: 12.0))
                                .addToStart(const SizedBox(width: 24.0)),
                          ),
                        ),
                        wrapWithModel(
                          model: _model.menuOptionModel9,
                          updateCallback: () => setState(() {}),
                          child: MenuOptionWidget(
                            title: 'Customers',
                            active: FFAppState().activePage == 'Customers',
                            iconActive: Icon(
                              FFIcons.kusers,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kusers,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Customers_Admin',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                  ),
                                },
                              );
                            },
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            setState(() => _model.mouseRegionHovered4 = true);
                          }),
                          onExit: ((event) async {
                            setState(() => _model.mouseRegionHovered4 = false);
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                (FFAppState().activePage == 'Sellers') ||
                                        (FFAppState().activePage ==
                                            'Add New Seller') ||
                                        (FFAppState().activePage ==
                                            'Seller Payouts')
                                    ? FlutterFlowTheme.of(context)
                                        .quaternaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackgroundALT,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackgroundALT,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController5,
                                child: ExpandablePanel(
                                  header: wrapWithModel(
                                    model: _model.menuOptionXModel5,
                                    updateCallback: () => setState(() {}),
                                    child: MenuOptionXWidget(
                                      title: 'Sellers',
                                      active: FFAppState().activePage ==
                                          'Analytics',
                                      iconActive: Icon(
                                        FFIcons.kbuildingStorefront,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      iconInactive: Icon(
                                        FFIcons.kbuildingStorefront,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.0,
                                    height: 0.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel19,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'All Sellers',
                                          active: FFAppState().activePage ==
                                              'All Sellers',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel20,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Seller Onboard',
                                          active: FFAppState().activePage ==
                                              'Seller Onboard',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel21,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Payouts',
                                          active: FFAppState().activePage ==
                                              'Payouts',
                                          lastOption: true,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: true,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 20.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconPadding: const EdgeInsets.fromLTRB(
                                        12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            setState(() => _model.mouseRegionHovered5 = true);
                          }),
                          onExit: ((event) async {
                            setState(() => _model.mouseRegionHovered5 = false);
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                (FFAppState().activePage == 'Employees') ||
                                        (FFAppState().activePage ==
                                            'Employee Permissions')
                                    ? FlutterFlowTheme.of(context)
                                        .quaternaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackgroundALT,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackgroundALT,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController6,
                                child: ExpandablePanel(
                                  header: wrapWithModel(
                                    model: _model.menuOptionXModel6,
                                    updateCallback: () => setState(() {}),
                                    child: MenuOptionXWidget(
                                      title: 'Employees',
                                      active: FFAppState().activePage ==
                                          'Employees',
                                      iconActive: Icon(
                                        FFIcons.kbriefcase,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      iconInactive: Icon(
                                        FFIcons.kbriefcase,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.0,
                                    height: 0.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel22,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'All Sellers',
                                          active: FFAppState().activePage ==
                                              'All Sellers',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel23,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Permissions',
                                          active: FFAppState().activePage ==
                                              'Permissions',
                                          lastOption: true,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: true,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 20.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconPadding: const EdgeInsets.fromLTRB(
                                        12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                        MouseRegion(
                          opaque: false,
                          cursor: MouseCursor.defer ?? MouseCursor.defer,
                          onEnter: ((event) async {
                            setState(() => _model.mouseRegionHovered6 = true);
                          }),
                          onExit: ((event) async {
                            setState(() => _model.mouseRegionHovered6 = false);
                          }),
                          child: Container(
                            decoration: BoxDecoration(
                              color: valueOrDefault<Color>(
                                (FFAppState().activePage == 'Delivery-men') ||
                                        (FFAppState().activePage ==
                                            'Delivery-men Payouts') ||
                                        (FFAppState().activePage ==
                                            'Add New Delivery-men')
                                    ? FlutterFlowTheme.of(context)
                                        .quaternaryBackground
                                    : FlutterFlowTheme.of(context)
                                        .secondaryBackgroundALT,
                                FlutterFlowTheme.of(context)
                                    .secondaryBackgroundALT,
                              ),
                            ),
                            child: Container(
                              width: double.infinity,
                              color: Colors.transparent,
                              child: ExpandableNotifier(
                                controller:
                                    _model.expandableExpandableController7,
                                child: ExpandablePanel(
                                  header: wrapWithModel(
                                    model: _model.menuOptionXModel7,
                                    updateCallback: () => setState(() {}),
                                    child: MenuOptionXWidget(
                                      title: 'Delivery-men',
                                      active: FFAppState().activePage ==
                                          'Employees',
                                      iconActive: Icon(
                                        Icons.delivery_dining_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .primary,
                                        size: 20.0,
                                      ),
                                      iconInactive: Icon(
                                        Icons.delivery_dining_outlined,
                                        color: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        size: 20.0,
                                      ),
                                    ),
                                  ),
                                  collapsed: Container(
                                    width:
                                        MediaQuery.sizeOf(context).width * 0.0,
                                    height: 0.0,
                                    decoration: BoxDecoration(
                                      color: FlutterFlowTheme.of(context)
                                          .secondaryBackground,
                                    ),
                                  ),
                                  expanded: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel24,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Add Delivery-men',
                                          active: FFAppState().activePage ==
                                              'Add Delivery-men',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel25,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'All Delivery-men',
                                          active: FFAppState().activePage ==
                                              'All Delivery-men',
                                          lastOption: false,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                      wrapWithModel(
                                        model: _model.subMenuOptionModel26,
                                        updateCallback: () => setState(() {}),
                                        child: SubMenuOptionWidget(
                                          title: 'Payouts',
                                          active: FFAppState().activePage ==
                                              'Payouts',
                                          lastOption: true,
                                          navigateAction: () async {},
                                        ),
                                      ),
                                    ],
                                  ),
                                  theme: ExpandableThemeData(
                                    tapHeaderToExpand: true,
                                    tapBodyToExpand: true,
                                    tapBodyToCollapse: true,
                                    headerAlignment:
                                        ExpandablePanelHeaderAlignment.center,
                                    hasIcon: true,
                                    iconSize: 20.0,
                                    iconColor: FlutterFlowTheme.of(context)
                                        .secondaryText,
                                    iconPadding: const EdgeInsets.fromLTRB(
                                        12.0, 0.0, 12.0, 0.0),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 12.0, 0.0, 12.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Text(
                                'GENERAL',
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Noto Sans HK',
                                      fontSize: 12.0,
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w500,
                                    ),
                              ),
                              Expanded(
                                child: Container(
                                  width: 100.0,
                                  height: 1.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .tertiaryBackground,
                                  ),
                                ),
                              ),
                            ]
                                .divide(const SizedBox(width: 12.0))
                                .addToStart(const SizedBox(width: 24.0)),
                          ),
                        ),
                        SingleChildScrollView(
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              MouseRegion(
                                opaque: false,
                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                onEnter: ((event) async {
                                  setState(
                                      () => _model.mouseRegionHovered7 = true);
                                }),
                                onExit: ((event) async {
                                  setState(
                                      () => _model.mouseRegionHovered7 = false);
                                }),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: valueOrDefault<Color>(
                                      (FFAppState().activePage ==
                                                  'Help & Support') ||
                                              (FFAppState().activePage ==
                                                  'Customer Support') ||
                                              (FFAppState().activePage ==
                                                  'Seller Support')
                                          ? FlutterFlowTheme.of(context)
                                              .quaternaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackgroundALT,
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackgroundALT,
                                    ),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.transparent,
                                    child: ExpandableNotifier(
                                      controller: _model
                                          .expandableExpandableController8,
                                      child: ExpandablePanel(
                                        header: wrapWithModel(
                                          model: _model.menuOptionXModel8,
                                          updateCallback: () => setState(() {}),
                                          child: MenuOptionXWidget(
                                            title: 'Help & Support',
                                            active: FFAppState().activePage ==
                                                'Help & Support',
                                            iconActive: Icon(
                                              FFIcons.khelpCircle,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            iconInactive: Icon(
                                              FFIcons.khelpCircle,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                        collapsed: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.0,
                                          height: 0.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        expanded: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel27,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'All Tickets',
                                                active:
                                                    FFAppState().activePage ==
                                                        'All Tickets',
                                                lastOption: false,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel28,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'Customer Support',
                                                active:
                                                    FFAppState().activePage ==
                                                        'Customer Support',
                                                lastOption: false,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel29,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'Seller Support',
                                                active:
                                                    FFAppState().activePage ==
                                                        'Seller Support',
                                                lastOption: true,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                          ],
                                        ),
                                        theme: ExpandableThemeData(
                                          tapHeaderToExpand: true,
                                          tapBodyToExpand: true,
                                          tapBodyToCollapse: true,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                          hasIcon: true,
                                          iconSize: 20.0,
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          iconPadding: const EdgeInsets.fromLTRB(
                                              12.0, 0.0, 12.0, 0.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              MouseRegion(
                                opaque: false,
                                cursor: MouseCursor.defer ?? MouseCursor.defer,
                                onEnter: ((event) async {
                                  setState(
                                      () => _model.mouseRegionHovered8 = true);
                                }),
                                onExit: ((event) async {
                                  setState(
                                      () => _model.mouseRegionHovered8 = false);
                                }),
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: valueOrDefault<Color>(
                                      (FFAppState().activePage == 'Settings') ||
                                              (FFAppState().activePage ==
                                                  'General Settings')
                                          ? FlutterFlowTheme.of(context)
                                              .quaternaryBackground
                                          : FlutterFlowTheme.of(context)
                                              .secondaryBackgroundALT,
                                      FlutterFlowTheme.of(context)
                                          .secondaryBackgroundALT,
                                    ),
                                  ),
                                  child: Container(
                                    width: double.infinity,
                                    color: Colors.transparent,
                                    child: ExpandableNotifier(
                                      controller: _model
                                          .expandableExpandableController9,
                                      child: ExpandablePanel(
                                        header: wrapWithModel(
                                          model: _model.menuOptionXModel9,
                                          updateCallback: () => setState(() {}),
                                          child: MenuOptionXWidget(
                                            title: 'Settings',
                                            active: FFAppState().activePage ==
                                                'Settings',
                                            iconActive: Icon(
                                              FFIcons.ksettings2Outline,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primary,
                                              size: 20.0,
                                            ),
                                            iconInactive: Icon(
                                              FFIcons.ksettings2Outline,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 20.0,
                                            ),
                                          ),
                                        ),
                                        collapsed: Container(
                                          width:
                                              MediaQuery.sizeOf(context).width *
                                                  0.0,
                                          height: 0.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .secondaryBackground,
                                          ),
                                        ),
                                        expanded: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel30,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'General',
                                                active:
                                                    FFAppState().activePage ==
                                                        'General Settings',
                                                lastOption: false,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel31,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'Products',
                                                active:
                                                    FFAppState().activePage ==
                                                        'Products Settings',
                                                lastOption: false,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel32,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'Pages',
                                                active:
                                                    FFAppState().activePage ==
                                                        'Pages Settings',
                                                lastOption: false,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel33,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'Payments',
                                                active:
                                                    FFAppState().activePage ==
                                                        'Payments Settings',
                                                lastOption: false,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel34,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'Tax',
                                                active:
                                                    FFAppState().activePage ==
                                                        'Tax Settings',
                                                lastOption: false,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel35,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'Shipping',
                                                active:
                                                    FFAppState().activePage ==
                                                        'Shipping Settings',
                                                lastOption: false,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                            wrapWithModel(
                                              model:
                                                  _model.subMenuOptionModel36,
                                              updateCallback: () =>
                                                  setState(() {}),
                                              child: SubMenuOptionWidget(
                                                title: 'Notifications',
                                                active: FFAppState()
                                                        .activePage ==
                                                    'Notifications Settings',
                                                lastOption: true,
                                                navigateAction: () async {},
                                              ),
                                            ),
                                          ],
                                        ),
                                        theme: ExpandableThemeData(
                                          tapHeaderToExpand: true,
                                          tapBodyToExpand: true,
                                          tapBodyToCollapse: true,
                                          headerAlignment:
                                              ExpandablePanelHeaderAlignment
                                                  .center,
                                          hasIcon: true,
                                          iconSize: 20.0,
                                          iconColor:
                                              FlutterFlowTheme.of(context)
                                                  .secondaryText,
                                          iconPadding: const EdgeInsets.fromLTRB(
                                              12.0, 0.0, 12.0, 0.0),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ].addToEnd(const SizedBox(height: 24.0)),
                ),
              ),
            ),
          ].divide(const SizedBox(height: 24.0)).addToStart(const SizedBox(height: 36.0)),
        ),
      ),
    );
  }
}
