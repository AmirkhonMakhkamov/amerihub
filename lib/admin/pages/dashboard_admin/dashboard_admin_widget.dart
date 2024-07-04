import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/admin/components/product_card_admin/product_card_admin_widget.dart';
import '/admin/components/rating_bar_item/rating_bar_item_widget.dart';
import '/admin/components/sales_card/sales_card_widget.dart';
import '/admin/components/sales_card_2/sales_card2_widget.dart';
import '/admin/components/stat_card/stat_card_widget.dart';
import '/admin/components/top_category_item_1/top_category_item1_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'dashboard_admin_model.dart';
export 'dashboard_admin_model.dart';

class DashboardAdminWidget extends StatefulWidget {
  const DashboardAdminWidget({super.key});

  @override
  State<DashboardAdminWidget> createState() => _DashboardAdminWidgetState();
}

class _DashboardAdminWidgetState extends State<DashboardAdminWidget>
    with TickerProviderStateMixin {
  late DashboardAdminModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  var hasIconTriggered = false;
  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => DashboardAdminModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().activePage = 'Dashboard';
      setState(() {});
    });

    animationsMap.addAll({
      'iconOnActionTriggerAnimation': AnimationInfo(
        trigger: AnimationTrigger.onActionTrigger,
        applyInitialState: false,
        effectsBuilder: () => [
          RotateEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 2400.0.ms,
            begin: 0.0,
            end: 2.0,
          ),
        ],
      ),
    });
    setupAnimations(
      animationsMap.values.where((anim) =>
          anim.trigger == AnimationTrigger.onActionTrigger ||
          !anim.applyInitialState),
      this,
    );

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackgroundALT,
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    if (responsiveVisibility(
                      context: context,
                      phone: false,
                      tablet: false,
                      tabletLandscape: false,
                    ))
                      wrapWithModel(
                        model: _model.navMenuAdminModel,
                        updateCallback: () => setState(() {}),
                        child: const NavMenuAdminWidget(),
                      ),
                    Expanded(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          wrapWithModel(
                            model: _model.headerModel,
                            updateCallback: () => setState(() {}),
                            child: const HeaderWidget(),
                          ),
                          Expanded(
                            child: SingleChildScrollView(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Expanded(
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.statCardModel1,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: StatCardWidget(
                                                      icon: Icon(
                                                        FFIcons.kcube,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      color: const Color(0xFFFFC632),
                                                      title: '120',
                                                      description:
                                                          'Total Products',
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.statCardModel2,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: StatCardWidget(
                                                      icon: Icon(
                                                        FFIcons.kcube,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      color: const Color(0xFF2E9863),
                                                      title: '120',
                                                      description:
                                                          'Total Products',
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.statCardModel3,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: StatCardWidget(
                                                      icon: Icon(
                                                        FFIcons.kcube,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      color: const Color(0xFFFF6869),
                                                      title: '120',
                                                      description:
                                                          'Total Products',
                                                    ),
                                                  ),
                                                ),
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.statCardModel4,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: StatCardWidget(
                                                      icon: Icon(
                                                        FFIcons.kcube,
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .primaryText,
                                                        size: 24.0,
                                                      ),
                                                      color: const Color(0xFF00AA07),
                                                      title: '120',
                                                      description:
                                                          'Total Products',
                                                    ),
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 24.0)),
                                            ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Expanded(
                                                  child: wrapWithModel(
                                                    model:
                                                        _model.salesCardModel,
                                                    updateCallback: () =>
                                                        setState(() {}),
                                                    child: const SalesCardWidget(),
                                                  ),
                                                ),
                                                wrapWithModel(
                                                  model: _model.salesCard2Model,
                                                  updateCallback: () =>
                                                      setState(() {}),
                                                  child: const SalesCard2Widget(
                                                    successfulOrders: 70,
                                                    pendingOrders: 20,
                                                    failedOrders: 10,
                                                    totalOrders: 100,
                                                  ),
                                                ),
                                              ].divide(const SizedBox(width: 24.0)),
                                            ),
                                            StreamBuilder<List<ProductsRecord>>(
                                              stream: queryProductsRecord(
                                                queryBuilder:
                                                    (productsRecord) =>
                                                        productsRecord.orderBy(
                                                            'total_sold',
                                                            descending: true),
                                                limit: 10,
                                              ),
                                              builder: (context, snapshot) {
                                                // Customize what your widget looks like when it's loading.
                                                if (!snapshot.hasData) {
                                                  return Center(
                                                    child: SizedBox(
                                                      width: 50.0,
                                                      height: 50.0,
                                                      child:
                                                          CircularProgressIndicator(
                                                        valueColor:
                                                            AlwaysStoppedAnimation<
                                                                Color>(
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .primary,
                                                        ),
                                                      ),
                                                    ),
                                                  );
                                                }
                                                List<ProductsRecord>
                                                    containerProductsRecordList =
                                                    snapshot.data!;
                                                return Container(
                                                  width: double.infinity,
                                                  height: 360.0,
                                                  decoration: BoxDecoration(
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .secondaryBackgroundALT,
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            12.0),
                                                  ),
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(24.0),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Text(
                                                                  'Top Selling Products',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans HK',
                                                                        fontSize:
                                                                            16.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  height: 4.0)),
                                                            ),
                                                          ],
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      6.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child:
                                                                    Container(
                                                                  width: 36.0,
                                                                  decoration:
                                                                      const BoxDecoration(),
                                                                  child: Text(
                                                                    'Product',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans HK',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 120.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Text(
                                                                  'Price',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans HK',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 120.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Text(
                                                                  'Sold',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans HK',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                              Container(
                                                                width: 120.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                alignment:
                                                                    const AlignmentDirectional(
                                                                        1.0,
                                                                        0.0),
                                                                child: Text(
                                                                  'Sales',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans HK',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                width: 12.0)),
                                                          ),
                                                        ),
                                                        Expanded(
                                                          child: Builder(
                                                            builder: (context) {
                                                              final products =
                                                                  containerProductsRecordList
                                                                      .toList();
                                                              return ListView
                                                                  .separated(
                                                                padding:
                                                                    EdgeInsets
                                                                        .zero,
                                                                shrinkWrap:
                                                                    true,
                                                                scrollDirection:
                                                                    Axis.vertical,
                                                                itemCount:
                                                                    products
                                                                        .length,
                                                                separatorBuilder: (_,
                                                                        __) =>
                                                                    const SizedBox(
                                                                        height:
                                                                            12.0),
                                                                itemBuilder:
                                                                    (context,
                                                                        productsIndex) {
                                                                  final productsItem =
                                                                      products[
                                                                          productsIndex];
                                                                  return ProductCardAdminWidget(
                                                                    key: Key(
                                                                        'Key802_${productsIndex}_of_${products.length}'),
                                                                    productTitle:
                                                                        productsItem
                                                                            .name,
                                                                    price: valueOrDefault<
                                                                        double>(
                                                                      productsItem
                                                                          .salePrice,
                                                                      0.00,
                                                                    ),
                                                                    sold:
                                                                        valueOrDefault<
                                                                            int>(
                                                                      productsItem
                                                                          .totalSold,
                                                                      0,
                                                                    ),
                                                                    sales: valueOrDefault<
                                                                        double>(
                                                                      productsItem
                                                                              .totalSold *
                                                                          productsItem
                                                                              .salePrice,
                                                                      0.0,
                                                                    ),
                                                                    productPhoto:
                                                                        productsItem
                                                                            .thumbnail
                                                                            .path,
                                                                  );
                                                                },
                                                              );
                                                            },
                                                          ),
                                                        ),
                                                      ].divide(const SizedBox(
                                                          height: 12.0)),
                                                    ),
                                                  ),
                                                );
                                              },
                                            ),
                                          ].divide(const SizedBox(height: 24.0)),
                                        ),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          FutureBuilder<List<ReviewsRecord>>(
                                            future: (_model
                                                        .firestoreRequestCompleter ??=
                                                    Completer<
                                                        List<ReviewsRecord>>()
                                                      ..complete(
                                                          queryReviewsRecordOnce(
                                                        queryBuilder:
                                                            (reviewsRecord) =>
                                                                reviewsRecord.orderBy(
                                                                    'created_at',
                                                                    descending:
                                                                        true),
                                                        limit: 100,
                                                      )))
                                                .future,
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ReviewsRecord>
                                                  containerReviewsRecordList =
                                                  snapshot.data!;
                                              return Container(
                                                width: 396.0,
                                                height: 506.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackgroundALT,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Customer Reviews',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Noto Sans HK',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                          InkWell(
                                                            splashColor: Colors
                                                                .transparent,
                                                            focusColor: Colors
                                                                .transparent,
                                                            hoverColor: Colors
                                                                .transparent,
                                                            highlightColor:
                                                                Colors
                                                                    .transparent,
                                                            onTap: () async {
                                                              if (animationsMap[
                                                                      'iconOnActionTriggerAnimation'] !=
                                                                  null) {
                                                                setState(() =>
                                                                    hasIconTriggered =
                                                                        true);
                                                                SchedulerBinding
                                                                    .instance
                                                                    .addPostFrameCallback((_) async => animationsMap[
                                                                            'iconOnActionTriggerAnimation']!
                                                                        .controller
                                                                        .forward(
                                                                            from:
                                                                                0.0));
                                                              }
                                                              setState(() =>
                                                                  _model.firestoreRequestCompleter =
                                                                      null);
                                                            },
                                                            child: const Icon(
                                                              FFIcons
                                                                  .karrowPath,
                                                              color: Color(
                                                                  0xFF00AA07),
                                                              size: 18.0,
                                                            ),
                                                          ).animateOnActionTrigger(
                                                              animationsMap[
                                                                  'iconOnActionTriggerAnimation']!,
                                                              hasBeenTriggered:
                                                                  hasIconTriggered),
                                                        ],
                                                      ),
                                                      Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        16.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .end,
                                                              children: [
                                                                Column(
                                                                  mainAxisSize:
                                                                      MainAxisSize
                                                                          .max,
                                                                  crossAxisAlignment:
                                                                      CrossAxisAlignment
                                                                          .start,
                                                                  children: [
                                                                    RatingBarIndicator(
                                                                      itemBuilder:
                                                                          (context, index) =>
                                                                              const Icon(
                                                                        Icons
                                                                            .star_rounded,
                                                                        color: Color(
                                                                            0xFFFFC632),
                                                                      ),
                                                                      direction:
                                                                          Axis.horizontal,
                                                                      rating: valueOrDefault<
                                                                          double>(
                                                                        functions.averageRating(
                                                                            containerReviewsRecordList.map((e) => e.rating).toList(),
                                                                            containerReviewsRecordList.length),
                                                                        0.0,
                                                                      ),
                                                                      unratedColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .accent3,
                                                                      itemCount:
                                                                          5,
                                                                      itemSize:
                                                                          28.0,
                                                                    ),
                                                                    Text(
                                                                      'Overral rating of ${valueOrDefault<String>(
                                                                        containerReviewsRecordList
                                                                            .length
                                                                            .toString(),
                                                                        '0',
                                                                      )} customer\'s reviews',
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .bodyMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Noto Sans HK',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            fontSize:
                                                                                12.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            fontWeight:
                                                                                FontWeight.w500,
                                                                          ),
                                                                    ),
                                                                  ].divide(const SizedBox(
                                                                      height:
                                                                          4.0)),
                                                                ),
                                                                RichText(
                                                                  textScaler: MediaQuery.of(
                                                                          context)
                                                                      .textScaler,
                                                                  text:
                                                                      TextSpan(
                                                                    children: [
                                                                      TextSpan(
                                                                        text: valueOrDefault<
                                                                            String>(
                                                                          formatNumber(
                                                                            functions.averageRating(containerReviewsRecordList.map((e) => e.rating).toList(),
                                                                                containerReviewsRecordList.length),
                                                                            formatType:
                                                                                FormatType.custom,
                                                                            format:
                                                                                '#.#',
                                                                            locale:
                                                                                'en_US',
                                                                          ),
                                                                          '0',
                                                                        ),
                                                                        style: FlutterFlowTheme.of(context)
                                                                            .bodyMedium
                                                                            .override(
                                                                              fontFamily: 'Noto Sans HK',
                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              fontWeight: FontWeight.w500,
                                                                            ),
                                                                      ),
                                                                      TextSpan(
                                                                        text:
                                                                            '  Out of 5 stars',
                                                                        style: GoogleFonts
                                                                            .getFont(
                                                                          'Noto Sans HK',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                        ),
                                                                      )
                                                                    ],
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans HK',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.w500,
                                                                        ),
                                                                  ),
                                                                ),
                                                              ].divide(const SizedBox(
                                                                  width: 16.0)),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    16.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            Icon(
                                                              FFIcons.kfilter,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 18.0,
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'View filters',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Icon(
                                                                FFIcons
                                                                    .kchevronDown,
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryText,
                                                                size: 18.0,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                      Expanded(
                                                        child: Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      0.0,
                                                                      24.0,
                                                                      0.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              wrapWithModel(
                                                                model: _model
                                                                    .ratingBarItemModel1,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const RatingBarItemWidget(
                                                                  title:
                                                                      'Excellent',
                                                                  totalRatings:
                                                                      120,
                                                                  color: Color(
                                                                      0xFF00AA07),
                                                                  bgColor: Color(
                                                                      0x3200AA07),
                                                                  rating: 0.0,
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .ratingBarItemModel2,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const RatingBarItemWidget(
                                                                  title: 'Good',
                                                                  totalRatings:
                                                                      120,
                                                                  color: Color(
                                                                      0xFF17BF6B),
                                                                  bgColor: Color(
                                                                      0x3217BF6B),
                                                                  rating: 0.0,
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .ratingBarItemModel3,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const RatingBarItemWidget(
                                                                  title:
                                                                      'Average',
                                                                  totalRatings:
                                                                      120,
                                                                  color: Color(
                                                                      0xFFFFC632),
                                                                  bgColor: Color(
                                                                      0x34FFC632),
                                                                  rating: 0.0,
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .ratingBarItemModel4,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const RatingBarItemWidget(
                                                                  title:
                                                                      'Avg Below',
                                                                  totalRatings:
                                                                      120,
                                                                  color: Color(
                                                                      0xFFFF9F00),
                                                                  bgColor: Color(
                                                                      0x34FF9F00),
                                                                  rating: 0.0,
                                                                ),
                                                              ),
                                                              wrapWithModel(
                                                                model: _model
                                                                    .ratingBarItemModel5,
                                                                updateCallback:
                                                                    () => setState(
                                                                        () {}),
                                                                child:
                                                                    const RatingBarItemWidget(
                                                                  title: 'Poor',
                                                                  totalRatings:
                                                                      120,
                                                                  color: Color(
                                                                      0xFFED3333),
                                                                  bgColor: Color(
                                                                      0x33ED3333),
                                                                  rating: 0.0,
                                                                ),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 16.0)),
                                                          ),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    48.0,
                                                                    48.0,
                                                                    48.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                              FFIcons
                                                                  .kinfoOutline,
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .secondaryText,
                                                              size: 16.0,
                                                            ),
                                                            Expanded(
                                                              child: Text(
                                                                'This data is from latest 100  customers rating or reviews.',
                                                                textAlign:
                                                                    TextAlign
                                                                        .center,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 12.0)),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    8.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            context.pushNamed(
                                                              'Reviews_Admin',
                                                              extra: <String,
                                                                  dynamic>{
                                                                kTransitionInfoKey:
                                                                    const TransitionInfo(
                                                                  hasTransition:
                                                                      true,
                                                                  transitionType:
                                                                      PageTransitionType
                                                                          .fade,
                                                                ),
                                                              },
                                                            );
                                                          },
                                                          text:
                                                              'See all Customer\'s Reviews',
                                                          options:
                                                              FFButtonOptions(
                                                            height: 40.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: const Color(
                                                                0x1A2F80ED),
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryALT,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                            elevation: 0.0,
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        20.0),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                          StreamBuilder<List<ProductsRecord>>(
                                            stream: queryProductsRecord(
                                              queryBuilder: (productsRecord) =>
                                                  productsRecord.orderBy(
                                                      'total_sold',
                                                      descending: true),
                                              limit: 10,
                                            ),
                                            builder: (context, snapshot) {
                                              // Customize what your widget looks like when it's loading.
                                              if (!snapshot.hasData) {
                                                return Center(
                                                  child: SizedBox(
                                                    width: 50.0,
                                                    height: 50.0,
                                                    child:
                                                        CircularProgressIndicator(
                                                      valueColor:
                                                          AlwaysStoppedAnimation<
                                                              Color>(
                                                        FlutterFlowTheme.of(
                                                                context)
                                                            .primary,
                                                      ),
                                                    ),
                                                  ),
                                                );
                                              }
                                              List<ProductsRecord>
                                                  containerProductsRecordList =
                                                  snapshot.data!;
                                              return Container(
                                                width: 396.0,
                                                height: 360.0,
                                                decoration: BoxDecoration(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .secondaryBackgroundALT,
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          12.0),
                                                ),
                                                child: Padding(
                                                  padding: const EdgeInsets.all(24.0),
                                                  child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      Row(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Expanded(
                                                            child: Text(
                                                              'Sales by Category',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Roboto',
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w500,
                                                                  ),
                                                            ),
                                                          ),
                                                          Icon(
                                                            FFIcons
                                                                .kmoreVerticalOutline,
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .secondaryText,
                                                            size: 18.0,
                                                          ),
                                                        ],
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    6.0,
                                                                    0.0,
                                                                    0.0),
                                                        child: Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Container(
                                                              width: 36.0,
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child: Text(
                                                                'Rank',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                            Expanded(
                                                              child: Container(
                                                                width: 36.0,
                                                                decoration:
                                                                    const BoxDecoration(),
                                                                child: Text(
                                                                  'Category',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans HK',
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .secondaryText,
                                                                        fontSize:
                                                                            12.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                      ),
                                                                ),
                                                              ),
                                                            ),
                                                            Container(
                                                              width: 36.0,
                                                              decoration:
                                                                  BoxDecoration(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .secondaryBackground,
                                                              ),
                                                              alignment:
                                                                  const AlignmentDirectional(
                                                                      1.0, 0.0),
                                                              child: Text(
                                                                'Sales',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          12.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w500,
                                                                    ),
                                                              ),
                                                            ),
                                                          ].divide(const SizedBox(
                                                              width: 12.0)),
                                                        ),
                                                      ),
                                                      Builder(
                                                        builder: (context) {
                                                          final topCategories = functions
                                                                  .topCategory(
                                                                      containerProductsRecordList
                                                                          .map((e) => e
                                                                              .totalSold)
                                                                          .toList(),
                                                                      containerProductsRecordList
                                                                          .map((e) =>
                                                                              e.category)
                                                                          .toList())
                                                                  ?.toList() ??
                                                              [];
                                                          return Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: List.generate(
                                                                topCategories
                                                                    .length,
                                                                (topCategoriesIndex) {
                                                              final topCategoriesItem =
                                                                  topCategories[
                                                                      topCategoriesIndex];
                                                              return TopCategoryItem1Widget(
                                                                key: Key(
                                                                    'Keyn5i_${topCategoriesIndex}_of_${topCategories.length}'),
                                                                rank:
                                                                    valueOrDefault<
                                                                        int>(
                                                                  functions.slNum(
                                                                      topCategoriesIndex),
                                                                  1,
                                                                ),
                                                                category:
                                                                    getJsonField(
                                                                  topCategoriesItem,
                                                                  r'''$.category''',
                                                                ).toString(),
                                                                sales:
                                                                    getJsonField(
                                                                  topCategoriesItem,
                                                                  r'''$.sales''',
                                                                ),
                                                                color:
                                                                    valueOrDefault<
                                                                        Color>(
                                                                  () {
                                                                    if (topCategoriesIndex ==
                                                                        0) {
                                                                      return const Color(
                                                                          0xFF00AA07);
                                                                    } else if (topCategoriesIndex ==
                                                                        1) {
                                                                      return const Color(
                                                                          0xFFFFC632);
                                                                    } else if (topCategoriesIndex ==
                                                                        2) {
                                                                      return const Color(
                                                                          0xFFFF9F00);
                                                                    } else if (topCategoriesIndex ==
                                                                        3) {
                                                                      return const Color(
                                                                          0xFF2874F0);
                                                                    } else if (topCategoriesIndex ==
                                                                        4) {
                                                                      return const Color(
                                                                          0xFFFF6868);
                                                                    } else {
                                                                      return const Color(
                                                                          0xFFED3333);
                                                                    }
                                                                  }(),
                                                                  const Color(
                                                                      0xFFED3333),
                                                                ),
                                                              );
                                                            }).divide(const SizedBox(
                                                                height: 24.0)),
                                                          );
                                                        },
                                                      ),
                                                    ].divide(
                                                        const SizedBox(height: 12.0)),
                                                  ),
                                                ),
                                              );
                                            },
                                          ),
                                        ].divide(const SizedBox(height: 24.0)),
                                      ),
                                    ]
                                        .divide(const SizedBox(width: 24.0))
                                        .addToStart(const SizedBox(width: 24.0))
                                        .addToEnd(const SizedBox(width: 24.0)),
                                  ),
                                ]
                                    .addToStart(const SizedBox(height: 24.0))
                                    .addToEnd(const SizedBox(height: 24.0)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
