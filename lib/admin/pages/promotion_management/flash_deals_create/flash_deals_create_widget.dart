import '/admin/components/header/header_widget.dart';
import '/admin/components/nav_menu/nav_menu_admin/nav_menu_admin_widget.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:provider/provider.dart';
import 'flash_deals_create_model.dart';
export 'flash_deals_create_model.dart';

class FlashDealsCreateWidget extends StatefulWidget {
  const FlashDealsCreateWidget({super.key});

  @override
  State<FlashDealsCreateWidget> createState() => _FlashDealsCreateWidgetState();
}

class _FlashDealsCreateWidgetState extends State<FlashDealsCreateWidget>
    with TickerProviderStateMixin {
  late FlashDealsCreateModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => FlashDealsCreateModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().activePage = 'Dashboard';
      setState(() {});
    });

    _model.titleTextController ??= TextEditingController();
    _model.titleFocusNode ??= FocusNode();

    _model.buttonTextTextController1 ??= TextEditingController();
    _model.buttonTextFocusNode1 ??= FocusNode();

    _model.buttonTextTextController2 ??= TextEditingController();
    _model.buttonTextFocusNode2 ??= FocusNode();

    animationsMap.addAll({
      'containerOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          ShimmerEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            color: const Color(0x80FFFFFF),
            angle: 0.524,
          ),
        ],
      ),
    });

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
                            child: const HeaderWidget(
                              title: 'Products',
                            ),
                          ),
                          Expanded(
                            child: StreamBuilder<List<AnnouncementRecord>>(
                              stream: queryAnnouncementRecord(
                                singleRecord: true,
                              ),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50.0,
                                      height: 50.0,
                                      child: CircularProgressIndicator(
                                        valueColor:
                                            AlwaysStoppedAnimation<Color>(
                                          FlutterFlowTheme.of(context).primary,
                                        ),
                                      ),
                                    ),
                                  );
                                }
                                List<AnnouncementRecord>
                                    containerAnnouncementRecordList =
                                    snapshot.data!;
                                final containerAnnouncementRecord =
                                    containerAnnouncementRecordList.isNotEmpty
                                        ? containerAnnouncementRecordList.first
                                        : null;
                                return Container(
                                  decoration: const BoxDecoration(),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding: const EdgeInsets.all(24.0),
                                          child: ClipRRect(
                                            borderRadius:
                                                BorderRadius.circular(6.0),
                                            child: Container(
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(6.0),
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .tertiaryBackground,
                                                ),
                                              ),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Container(
                                                    width: double.infinity,
                                                    height: 72.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.max,
                                                      children: [
                                                        Expanded(
                                                          child: Row(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .max,
                                                            children: [
                                                              Expanded(
                                                                child: Text(
                                                                  'Flash Deal Information',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Noto Sans HK',
                                                                        fontSize:
                                                                            18.0,
                                                                        letterSpacing:
                                                                            0.0,
                                                                      ),
                                                                ),
                                                              ),
                                                            ]
                                                                .divide(const SizedBox(
                                                                    width:
                                                                        12.0))
                                                                .addToStart(
                                                                    const SizedBox(
                                                                        width:
                                                                            24.0))
                                                                .addToEnd(const SizedBox(
                                                                    width:
                                                                        24.0)),
                                                          ),
                                                        ),
                                                        Divider(
                                                          height: 1.0,
                                                          thickness: 1.0,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .tertiaryBackground,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  Container(
                                                    width: double.infinity,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                    ),
                                                    child: Column(
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
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
                                                                    'Title',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans HK',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  TextFormField(
                                                                    controller:
                                                                        _model
                                                                            .titleTextController,
                                                                    focusNode:
                                                                        _model
                                                                            .titleFocusNode,
                                                                    autofocus:
                                                                        false,
                                                                    obscureText:
                                                                        false,
                                                                    decoration:
                                                                        InputDecoration(
                                                                      hintText:
                                                                          'Type your text here',
                                                                      hintStyle: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelMedium
                                                                          .override(
                                                                            fontFamily:
                                                                                'Manrope',
                                                                            color:
                                                                                FlutterFlowTheme.of(context).secondaryText,
                                                                            letterSpacing:
                                                                                0.0,
                                                                          ),
                                                                      enabledBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).tertiaryBackground,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primary,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      errorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      focusedErrorBorder:
                                                                          OutlineInputBorder(
                                                                        borderSide:
                                                                            BorderSide(
                                                                          color:
                                                                              FlutterFlowTheme.of(context).error,
                                                                          width:
                                                                              1.0,
                                                                        ),
                                                                        borderRadius:
                                                                            BorderRadius.circular(8.0),
                                                                      ),
                                                                      filled:
                                                                          true,
                                                                      fillColor:
                                                                          FlutterFlowTheme.of(context)
                                                                              .secondaryBackground,
                                                                    ),
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans HK',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).primaryText,
                                                                          fontSize:
                                                                              12.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          fontWeight:
                                                                              FontWeight.normal,
                                                                        ),
                                                                    validator: _model
                                                                        .titleTextControllerValidator
                                                                        .asValidator(
                                                                            context),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        12.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Banner',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans HK',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  Row(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              240.0,
                                                                          decoration:
                                                                              BoxDecoration(
                                                                            borderRadius:
                                                                                BorderRadius.circular(6.0),
                                                                            border:
                                                                                Border.all(
                                                                              color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                            ),
                                                                          ),
                                                                          child:
                                                                              Stack(
                                                                            children: [
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(1.0, -1.0),
                                                                                child: Padding(
                                                                                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 16.0, 16.0, 0.0),
                                                                                  child: FlutterFlowIconButton(
                                                                                    borderColor: Colors.transparent,
                                                                                    borderRadius: 6.0,
                                                                                    borderWidth: 1.0,
                                                                                    buttonSize: 40.0,
                                                                                    fillColor: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                    icon: Icon(
                                                                                      FFIcons.ktrashFull,
                                                                                      color: FlutterFlowTheme.of(context).error,
                                                                                      size: 18.0,
                                                                                    ),
                                                                                    onPressed: () {
                                                                                      print('IconButton pressed ...');
                                                                                    },
                                                                                  ),
                                                                                ),
                                                                              ),
                                                                              Align(
                                                                                alignment: const AlignmentDirectional(0.0, 0.0),
                                                                                child: Column(
                                                                                  mainAxisSize: MainAxisSize.min,
                                                                                  mainAxisAlignment: MainAxisAlignment.center,
                                                                                  children: [
                                                                                    FlutterFlowIconButton(
                                                                                      borderColor: Colors.transparent,
                                                                                      borderRadius: 6.0,
                                                                                      borderWidth: 1.0,
                                                                                      buttonSize: 48.0,
                                                                                      fillColor: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      icon: Icon(
                                                                                        Icons.upload_rounded,
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        size: 24.0,
                                                                                      ),
                                                                                      onPressed: () {
                                                                                        print('IconButton pressed ...');
                                                                                      },
                                                                                    ),
                                                                                    Text(
                                                                                      'Upload Announcement Image',
                                                                                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                            fontFamily: 'Noto Sans HK',
                                                                                            color: FlutterFlowTheme.of(context).secondaryText,
                                                                                            fontSize: 12.0,
                                                                                            letterSpacing: 0.0,
                                                                                            fontWeight: FontWeight.normal,
                                                                                          ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(height: 12.0)),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        12.0)),
                                                              ),
                                                              Row(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                children: [
                                                                  Expanded(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          'Start Date',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans HK',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                        TextFormField(
                                                                          controller:
                                                                              _model.buttonTextTextController1,
                                                                          focusNode:
                                                                              _model.buttonTextFocusNode1,
                                                                          autofocus:
                                                                              false,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            hintText:
                                                                                'Type your text here',
                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            suffixIcon:
                                                                                Icon(
                                                                              FFIcons.kcalendarDays,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans HK',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                          keyboardType:
                                                                              TextInputType.number,
                                                                          validator: _model
                                                                              .buttonTextTextController1Validator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 12.0)),
                                                                    ),
                                                                  ),
                                                                  Expanded(
                                                                    child:
                                                                        Column(
                                                                      mainAxisSize:
                                                                          MainAxisSize
                                                                              .max,
                                                                      crossAxisAlignment:
                                                                          CrossAxisAlignment
                                                                              .start,
                                                                      children:
                                                                          [
                                                                        Text(
                                                                          'End Date',
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans HK',
                                                                                letterSpacing: 0.0,
                                                                              ),
                                                                        ),
                                                                        TextFormField(
                                                                          controller:
                                                                              _model.buttonTextTextController2,
                                                                          focusNode:
                                                                              _model.buttonTextFocusNode2,
                                                                          autofocus:
                                                                              false,
                                                                          obscureText:
                                                                              false,
                                                                          decoration:
                                                                              InputDecoration(
                                                                            hintText:
                                                                                'Type your text here',
                                                                            hintStyle: FlutterFlowTheme.of(context).labelMedium.override(
                                                                                  fontFamily: 'Manrope',
                                                                                  color: FlutterFlowTheme.of(context).secondaryText,
                                                                                  letterSpacing: 0.0,
                                                                                ),
                                                                            enabledBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).primary,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            errorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            focusedErrorBorder:
                                                                                OutlineInputBorder(
                                                                              borderSide: BorderSide(
                                                                                color: FlutterFlowTheme.of(context).error,
                                                                                width: 1.0,
                                                                              ),
                                                                              borderRadius: BorderRadius.circular(8.0),
                                                                            ),
                                                                            filled:
                                                                                true,
                                                                            fillColor:
                                                                                FlutterFlowTheme.of(context).secondaryBackground,
                                                                            suffixIcon:
                                                                                Icon(
                                                                              FFIcons.kcalendarDays,
                                                                              color: FlutterFlowTheme.of(context).secondaryText,
                                                                              size: 18.0,
                                                                            ),
                                                                          ),
                                                                          style: FlutterFlowTheme.of(context)
                                                                              .bodyMedium
                                                                              .override(
                                                                                fontFamily: 'Noto Sans HK',
                                                                                color: FlutterFlowTheme.of(context).primaryText,
                                                                                fontSize: 12.0,
                                                                                letterSpacing: 0.0,
                                                                                fontWeight: FontWeight.normal,
                                                                              ),
                                                                          keyboardType:
                                                                              TextInputType.number,
                                                                          validator: _model
                                                                              .buttonTextTextController2Validator
                                                                              .asValidator(context),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 12.0)),
                                                                    ),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    width:
                                                                        48.0)),
                                                              ),
                                                              Column(
                                                                mainAxisSize:
                                                                    MainAxisSize
                                                                        .max,
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    'Products',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Noto Sans HK',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                  ),
                                                                  FlutterFlowDropDown<
                                                                      String>(
                                                                    multiSelectController: _model
                                                                        .dropDownValueController ??= FormListFieldController<
                                                                            String>(
                                                                        null),
                                                                    options: const [
                                                                      'Option 1'
                                                                    ],
                                                                    width: double
                                                                        .infinity,
                                                                    height:
                                                                        56.0,
                                                                    searchHintTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    searchTextStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Manrope',
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    textStyle: FlutterFlowTheme.of(
                                                                            context)
                                                                        .bodyMedium
                                                                        .override(
                                                                          fontFamily:
                                                                              'Roboto',
                                                                          color:
                                                                              FlutterFlowTheme.of(context).secondaryText,
                                                                          letterSpacing:
                                                                              0.0,
                                                                        ),
                                                                    hintText:
                                                                        'Please select...',
                                                                    searchHintText:
                                                                        'Search for an item...',
                                                                    icon: Icon(
                                                                      Icons
                                                                          .keyboard_arrow_down_rounded,
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      size:
                                                                          24.0,
                                                                    ),
                                                                    fillColor: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                    elevation:
                                                                        2.0,
                                                                    borderColor:
                                                                        FlutterFlowTheme.of(context)
                                                                            .tertiaryBackground,
                                                                    borderWidth:
                                                                        1.0,
                                                                    borderRadius:
                                                                        8.0,
                                                                    margin: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            16.0,
                                                                            4.0,
                                                                            16.0,
                                                                            4.0),
                                                                    hidesUnderline:
                                                                        true,
                                                                    isOverButton:
                                                                        true,
                                                                    isSearchable:
                                                                        true,
                                                                    isMultiSelect:
                                                                        true,
                                                                    onMultiSelectChanged:
                                                                        (val) =>
                                                                            setState(() =>
                                                                                _model.dropDownValue = val),
                                                                  ),
                                                                ].divide(const SizedBox(
                                                                    height:
                                                                        12.0)),
                                                              ),
                                                            ].divide(const SizedBox(
                                                                height: 24.0)),
                                                          ),
                                                        ),
                                                        Padding(
                                                          padding:
                                                              const EdgeInsetsDirectional
                                                                  .fromSTEB(
                                                                      24.0,
                                                                      0.0,
                                                                      24.0,
                                                                      0.0),
                                                          child: Container(
                                                            decoration:
                                                                BoxDecoration(
                                                              border:
                                                                  Border.all(
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .tertiaryBackground,
                                                              ),
                                                            ),
                                                            child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Container(
                                                                  width: double
                                                                      .infinity,
                                                                  height: 60.0,
                                                                  decoration:
                                                                      BoxDecoration(
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .secondaryBackground,
                                                                  ),
                                                                  child: Column(
                                                                    mainAxisSize:
                                                                        MainAxisSize
                                                                            .max,
                                                                    children: [
                                                                      Expanded(
                                                                        child:
                                                                            Row(
                                                                          mainAxisSize:
                                                                              MainAxisSize.max,
                                                                          children:
                                                                              [
                                                                            Expanded(
                                                                              child: Container(
                                                                                width: 292.0,
                                                                                decoration: const BoxDecoration(),
                                                                                child: Text(
                                                                                  'Product',
                                                                                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                        fontFamily: 'Noto Sans HK',
                                                                                        color: FlutterFlowTheme.of(context).primaryText,
                                                                                        letterSpacing: 0.0,
                                                                                        fontWeight: FontWeight.w500,
                                                                                      ),
                                                                                ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 60.0,
                                                                              child: VerticalDivider(
                                                                                width: 1.0,
                                                                                thickness: 1.0,
                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 120.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Text(
                                                                                'Base Price',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans HK',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 60.0,
                                                                              child: VerticalDivider(
                                                                                width: 1.0,
                                                                                thickness: 1.0,
                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 84.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Text(
                                                                                'Discount',
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans HK',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                            SizedBox(
                                                                              height: 60.0,
                                                                              child: VerticalDivider(
                                                                                width: 1.0,
                                                                                thickness: 1.0,
                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                              ),
                                                                            ),
                                                                            Container(
                                                                              width: 120.0,
                                                                              decoration: const BoxDecoration(),
                                                                              child: Text(
                                                                                'Discount Type',
                                                                                textAlign: TextAlign.center,
                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                      fontFamily: 'Noto Sans HK',
                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                      letterSpacing: 0.0,
                                                                                      fontWeight: FontWeight.w500,
                                                                                    ),
                                                                              ),
                                                                            ),
                                                                          ].divide(const SizedBox(width: 16.0)).addToStart(const SizedBox(width: 12.0)).addToEnd(const SizedBox(width: 24.0)),
                                                                        ),
                                                                      ),
                                                                      Divider(
                                                                        height:
                                                                            1.0,
                                                                        thickness:
                                                                            1.0,
                                                                        color: FlutterFlowTheme.of(context)
                                                                            .tertiaryBackground,
                                                                      ),
                                                                    ],
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          2.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child:
                                                                      Container(
                                                                    decoration:
                                                                        const BoxDecoration(),
                                                                    child:
                                                                        ListView(
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      shrinkWrap:
                                                                          true,
                                                                      scrollDirection:
                                                                          Axis.vertical,
                                                                      children:
                                                                          [
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              96.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: 292.0,
                                                                                        decoration: const BoxDecoration(),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsets.all(6.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                  child: Image.network(
                                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neo-mart-pro-admin-tfp67j/assets/f053ahnqau0n/thumbnail-2.png',
                                                                                                    width: 60.0,
                                                                                                    height: 60.0,
                                                                                                    fit: BoxFit.contain,
                                                                                                    errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                                      'assets/images/error_image.png',
                                                                                                      width: 60.0,
                                                                                                      height: 60.0,
                                                                                                      fit: BoxFit.contain,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Text(
                                                                                                'ASUS TUF Gaming F15 (2023) with 90WHr Battery Intel H-Series Core i7 ',
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Noto Sans HK',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(const SizedBox(width: 12.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          '\$100',
                                                                                          '\$0.00',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 84.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          '\$100',
                                                                                          '\$0.00',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        'Flat',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 16.0)).addToStart(const SizedBox(width: 12.0)).addToEnd(const SizedBox(width: 24.0)),
                                                                                ),
                                                                              ),
                                                                              Divider(
                                                                                height: 1.0,
                                                                                thickness: 1.0,
                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              96.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: 292.0,
                                                                                        decoration: const BoxDecoration(),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsets.all(6.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                  child: Image.network(
                                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neo-mart-pro-admin-tfp67j/assets/f053ahnqau0n/thumbnail-2.png',
                                                                                                    width: 60.0,
                                                                                                    height: 60.0,
                                                                                                    fit: BoxFit.contain,
                                                                                                    errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                                      'assets/images/error_image.png',
                                                                                                      width: 60.0,
                                                                                                      height: 60.0,
                                                                                                      fit: BoxFit.contain,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Text(
                                                                                                'ASUS TUF Gaming F15 (2023) with 90WHr Battery Intel H-Series Core i7 ',
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Noto Sans HK',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(const SizedBox(width: 12.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          '\$100',
                                                                                          '\$0.00',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 84.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          '\$100',
                                                                                          '\$0.00',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        'Flat',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 16.0)).addToStart(const SizedBox(width: 12.0)).addToEnd(const SizedBox(width: 24.0)),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                        Container(
                                                                          width:
                                                                              double.infinity,
                                                                          height:
                                                                              96.0,
                                                                          decoration:
                                                                              const BoxDecoration(),
                                                                          child:
                                                                              Column(
                                                                            mainAxisSize:
                                                                                MainAxisSize.max,
                                                                            mainAxisAlignment:
                                                                                MainAxisAlignment.center,
                                                                            children: [
                                                                              Expanded(
                                                                                child: Row(
                                                                                  mainAxisSize: MainAxisSize.max,
                                                                                  children: [
                                                                                    Expanded(
                                                                                      child: Container(
                                                                                        width: 292.0,
                                                                                        decoration: const BoxDecoration(),
                                                                                        child: Row(
                                                                                          mainAxisSize: MainAxisSize.max,
                                                                                          mainAxisAlignment: MainAxisAlignment.start,
                                                                                          crossAxisAlignment: CrossAxisAlignment.center,
                                                                                          children: [
                                                                                            Container(
                                                                                              width: 60.0,
                                                                                              height: 60.0,
                                                                                              decoration: BoxDecoration(
                                                                                                color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                                borderRadius: BorderRadius.circular(6.0),
                                                                                              ),
                                                                                              child: Padding(
                                                                                                padding: const EdgeInsets.all(6.0),
                                                                                                child: ClipRRect(
                                                                                                  borderRadius: BorderRadius.circular(8.0),
                                                                                                  child: Image.network(
                                                                                                    'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/neo-mart-pro-admin-tfp67j/assets/f053ahnqau0n/thumbnail-2.png',
                                                                                                    width: 60.0,
                                                                                                    height: 60.0,
                                                                                                    fit: BoxFit.contain,
                                                                                                    errorBuilder: (context, error, stackTrace) => Image.asset(
                                                                                                      'assets/images/error_image.png',
                                                                                                      width: 60.0,
                                                                                                      height: 60.0,
                                                                                                      fit: BoxFit.contain,
                                                                                                    ),
                                                                                                  ),
                                                                                                ),
                                                                                              ),
                                                                                            ),
                                                                                            Expanded(
                                                                                              child: Text(
                                                                                                'ASUS TUF Gaming F15 (2023) with 90WHr Battery Intel H-Series Core i7 ',
                                                                                                maxLines: 2,
                                                                                                style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                                      fontFamily: 'Noto Sans HK',
                                                                                                      color: FlutterFlowTheme.of(context).primaryText,
                                                                                                      letterSpacing: 0.0,
                                                                                                      fontWeight: FontWeight.normal,
                                                                                                    ),
                                                                                              ),
                                                                                            ),
                                                                                          ].divide(const SizedBox(width: 12.0)),
                                                                                        ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          '\$100',
                                                                                          '\$0.00',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 84.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        valueOrDefault<String>(
                                                                                          '\$100',
                                                                                          '\$0.00',
                                                                                        ),
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                    SizedBox(
                                                                                      height: 84.0,
                                                                                      child: VerticalDivider(
                                                                                        width: 1.0,
                                                                                        thickness: 1.0,
                                                                                        color: FlutterFlowTheme.of(context).tertiaryBackground,
                                                                                      ),
                                                                                    ),
                                                                                    Container(
                                                                                      width: 120.0,
                                                                                      decoration: const BoxDecoration(),
                                                                                      child: Text(
                                                                                        'Flat',
                                                                                        textAlign: TextAlign.center,
                                                                                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                                                                                              fontFamily: 'Noto Sans HK',
                                                                                              color: FlutterFlowTheme.of(context).primaryText,
                                                                                              letterSpacing: 0.0,
                                                                                              fontWeight: FontWeight.normal,
                                                                                            ),
                                                                                      ),
                                                                                    ),
                                                                                  ].divide(const SizedBox(width: 16.0)).addToStart(const SizedBox(width: 12.0)).addToEnd(const SizedBox(width: 24.0)),
                                                                                ),
                                                                              ),
                                                                            ],
                                                                          ),
                                                                        ),
                                                                      ].divide(const SizedBox(
                                                                              height: 16.0)),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ),
                                                        Row(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .end,
                                                          children: [
                                                            FFButtonWidget(
                                                              onPressed: () {
                                                                print(
                                                                    'Button pressed ...');
                                                              },
                                                              text: 'Save',
                                                              options:
                                                                  FFButtonOptions(
                                                                width: 120.0,
                                                                height: 48.0,
                                                                padding: const EdgeInsetsDirectional
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
                                                                    0x672874F0),
                                                                textStyle: FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Noto Sans HK',
                                                                      color: Colors
                                                                          .white,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                    ),
                                                                elevation: 0.0,
                                                                borderSide:
                                                                    BorderSide(
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .primary,
                                                                  width: 1.5,
                                                                ),
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            6.0),
                                                              ),
                                                            ),
                                                          ]
                                                              .addToStart(
                                                                  const SizedBox(
                                                                      width:
                                                                          24.0))
                                                              .addToEnd(const SizedBox(
                                                                  width: 24.0)),
                                                        ),
                                                      ]
                                                          .divide(const SizedBox(
                                                              height: 24.0))
                                                          .addToStart(const SizedBox(
                                                              height: 24.0))
                                                          .addToEnd(const SizedBox(
                                                              height: 24.0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ).animateOnPageLoad(animationsMap[
                                    'containerOnPageLoadAnimation']!);
                              },
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
