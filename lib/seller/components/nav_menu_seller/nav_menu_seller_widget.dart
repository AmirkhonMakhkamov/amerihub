import '/admin/components/nav_menu/menu_option/menu_option_widget.dart';
import '/admin/components/nav_menu/menu_option_x/menu_option_x_widget.dart';
import '/admin/components/nav_menu/sub_menu_option/sub_menu_option_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:expandable/expandable.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'nav_menu_seller_model.dart';
export 'nav_menu_seller_model.dart';

class NavMenuSellerWidget extends StatefulWidget {
  const NavMenuSellerWidget({super.key});

  @override
  State<NavMenuSellerWidget> createState() => _NavMenuSellerWidgetState();
}

class _NavMenuSellerWidgetState extends State<NavMenuSellerWidget> {
  late NavMenuSellerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NavMenuSellerModel());

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
                  'Dashboard_Seller',
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
                                'Dashboard_Seller',
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
                                      active: false,
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
                                            navigateAction: () async {
                                              context.pushNamed(
                                                'AddProducts_Seller',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
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
                                            navigateAction: () async {
                                              context.pushNamed(
                                                'Products',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
                                          ),
                                        ),
                                        wrapWithModel(
                                          model: _model.subMenuOptionModel3,
                                          updateCallback: () => setState(() {}),
                                          child: SubMenuOptionWidget(
                                            title: 'Reviews',
                                            active: FFAppState().activePage ==
                                                'Attributes',
                                            lastOption: true,
                                            navigateAction: () async {
                                              context.pushNamed(
                                                'Reviews_Seller',
                                                extra: <String, dynamic>{
                                                  kTransitionInfoKey:
                                                      const TransitionInfo(
                                                    hasTransition: true,
                                                    transitionType:
                                                        PageTransitionType.fade,
                                                  ),
                                                },
                                              );
                                            },
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
                                'OrdersSeller',
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
                            title: 'Refunds Requests',
                            active:
                                FFAppState().activePage == 'Refunds Requests',
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
                                'Refunds_Seller',
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
                            title: 'Coupons',
                            active: FFAppState().activePage == 'Coupons',
                            iconActive: Icon(
                              FFIcons.kgift,
                              color: FlutterFlowTheme.of(context).primary,
                              size: 20.0,
                            ),
                            iconInactive: Icon(
                              FFIcons.kgift,
                              color: FlutterFlowTheme.of(context).secondaryText,
                              size: 20.0,
                            ),
                            navigateAction: () async {
                              context.pushNamed(
                                'Coupons_Seller',
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
                        Container(
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
                                    title: 'Reports',
                                    active:
                                        FFAppState().activePage == 'Analytics',
                                    iconActive: Icon(
                                      FFIcons.kpieChartOutline,
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                  width: MediaQuery.sizeOf(context).width * 0.0,
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
                                      model: _model.subMenuOptionModel4,
                                      updateCallback: () => setState(() {}),
                                      child: SubMenuOptionWidget(
                                        title: 'Transactions',
                                        active: FFAppState().activePage ==
                                            'Add New Product',
                                        lastOption: false,
                                        navigateAction: () async {
                                          context
                                              .pushNamed('TransactionReport');
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.subMenuOptionModel5,
                                      updateCallback: () => setState(() {}),
                                      child: SubMenuOptionWidget(
                                        title: 'Products',
                                        active: FFAppState().activePage ==
                                            'Add New Product',
                                        lastOption: false,
                                        navigateAction: () async {
                                          context.pushNamed(
                                            'ProductReport',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.subMenuOptionModel6,
                                      updateCallback: () => setState(() {}),
                                      child: SubMenuOptionWidget(
                                        title: 'Orders',
                                        active: FFAppState().activePage ==
                                            'Add New Product',
                                        lastOption: true,
                                        navigateAction: () async {
                                          context.pushNamed('OrderReport');
                                        },
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
                                  iconPadding:
                                      const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
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
                                      color:
                                          FlutterFlowTheme.of(context).primary,
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
                                  width: MediaQuery.sizeOf(context).width * 0.0,
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
                                      model: _model.subMenuOptionModel7,
                                      updateCallback: () => setState(() {}),
                                      child: SubMenuOptionWidget(
                                        title: 'Payments',
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
                                        title: 'Withdrawals',
                                        active: FFAppState().activePage ==
                                            'Add New Product',
                                        lastOption: false,
                                        navigateAction: () async {
                                          context.pushNamed(
                                            'Withdrawals',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
                                      ),
                                    ),
                                    wrapWithModel(
                                      model: _model.subMenuOptionModel9,
                                      updateCallback: () => setState(() {}),
                                      child: SubMenuOptionWidget(
                                        title: 'Bank Details',
                                        active: FFAppState().activePage ==
                                            'Add New Product',
                                        lastOption: true,
                                        navigateAction: () async {
                                          context.pushNamed(
                                            'BankDetails',
                                            extra: <String, dynamic>{
                                              kTransitionInfoKey:
                                                  const TransitionInfo(
                                                hasTransition: true,
                                                transitionType:
                                                    PageTransitionType.fade,
                                              ),
                                            },
                                          );
                                        },
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
                                  iconPadding:
                                      const EdgeInsets.fromLTRB(12.0, 0.0, 12.0, 0.0),
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
                              Container(
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
                                    controller:
                                        _model.expandableExpandableController4,
                                    child: ExpandablePanel(
                                      header: wrapWithModel(
                                        model: _model.menuOptionXModel4,
                                        updateCallback: () => setState(() {}),
                                        child: MenuOptionXWidget(
                                          title: 'Help & Support',
                                          active: FFAppState().activePage ==
                                              'Help & Support',
                                          iconActive: Icon(
                                            FFIcons.khelpCircle,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          iconInactive: Icon(
                                            FFIcons.khelpCircle,
                                            color: FlutterFlowTheme.of(context)
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
                                            model: _model.subMenuOptionModel10,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuOptionWidget(
                                              title: 'Customer Queries',
                                              active: FFAppState().activePage ==
                                                  'All Tickets',
                                              lastOption: false,
                                              navigateAction: () async {
                                                context.pushNamed(
                                                  'Queries',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.subMenuOptionModel11,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuOptionWidget(
                                              title: 'Raise Ticket',
                                              active: FFAppState().activePage ==
                                                  'Seller Support',
                                              lastOption: true,
                                              navigateAction: () async {
                                                context.pushNamed(
                                                  'SupportTicket',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
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
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconPadding: const EdgeInsets.fromLTRB(
                                            12.0, 0.0, 12.0, 0.0),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
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
                                    controller:
                                        _model.expandableExpandableController5,
                                    child: ExpandablePanel(
                                      header: wrapWithModel(
                                        model: _model.menuOptionXModel5,
                                        updateCallback: () => setState(() {}),
                                        child: MenuOptionXWidget(
                                          title: 'Settings',
                                          active: FFAppState().activePage ==
                                              'Settings',
                                          iconActive: Icon(
                                            FFIcons.ksettings2Outline,
                                            color: FlutterFlowTheme.of(context)
                                                .primary,
                                            size: 20.0,
                                          ),
                                          iconInactive: Icon(
                                            FFIcons.ksettings2Outline,
                                            color: FlutterFlowTheme.of(context)
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
                                            model: _model.subMenuOptionModel12,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuOptionWidget(
                                              title: 'General',
                                              active: FFAppState().activePage ==
                                                  'General Settings',
                                              lastOption: false,
                                              navigateAction: () async {
                                                context.pushNamed(
                                                  'GeneralSettings',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.subMenuOptionModel13,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuOptionWidget(
                                              title: 'Pickup Address',
                                              active: FFAppState().activePage ==
                                                  'Products Settings',
                                              lastOption: false,
                                              navigateAction: () async {
                                                context.pushNamed(
                                                  'PickupAddress',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
                                            ),
                                          ),
                                          wrapWithModel(
                                            model: _model.subMenuOptionModel14,
                                            updateCallback: () =>
                                                setState(() {}),
                                            child: SubMenuOptionWidget(
                                              title: 'Business Details',
                                              active: FFAppState().activePage ==
                                                  'Notifications Settings',
                                              lastOption: true,
                                              navigateAction: () async {
                                                context.pushNamed(
                                                  'BusinessDetails',
                                                  extra: <String, dynamic>{
                                                    kTransitionInfoKey:
                                                        const TransitionInfo(
                                                      hasTransition: true,
                                                      transitionType:
                                                          PageTransitionType
                                                              .fade,
                                                    ),
                                                  },
                                                );
                                              },
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
                                        iconColor: FlutterFlowTheme.of(context)
                                            .secondaryText,
                                        iconPadding: const EdgeInsets.fromLTRB(
                                            12.0, 0.0, 12.0, 0.0),
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
