import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'payments_model.dart';
export 'payments_model.dart';

class PaymentsWidget extends StatefulWidget {
  const PaymentsWidget({super.key});

  @override
  State<PaymentsWidget> createState() => _PaymentsWidgetState();
}

class _PaymentsWidgetState extends State<PaymentsWidget> {
  late PaymentsModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => PaymentsModel());

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
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        appBar: AppBar(
          backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
          automaticallyImplyLeading: false,
          leading: FlutterFlowIconButton(
            borderColor: Colors.transparent,
            borderRadius: 30.0,
            borderWidth: 1.0,
            buttonSize: 48.0,
            icon: Icon(
              Icons.arrow_back_rounded,
              color: FlutterFlowTheme.of(context).primaryText,
              size: 30.0,
            ),
            onPressed: () async {
              context.safePop();
            },
          ),
          title: Text(
            'Payments',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Manrope',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 18.0,
                  letterSpacing: 0.0,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 1.0,
        ),
        body: StreamBuilder<List<CartRecord>>(
          stream: queryCartRecord(
            queryBuilder: (cartRecord) => cartRecord.where(
              'userRef',
              isEqualTo: currentUserReference,
            ),
          ),
          builder: (context, snapshot) {
            // Customize what your widget looks like when it's loading.
            if (!snapshot.hasData) {
              return Center(
                child: SizedBox(
                  width: 50.0,
                  height: 50.0,
                  child: CircularProgressIndicator(
                    valueColor: AlwaysStoppedAnimation<Color>(
                      FlutterFlowTheme.of(context).primary,
                    ),
                  ),
                ),
              );
            }
            List<CartRecord> containerCartRecordList = snapshot.data!;
            return Container(
              width: double.infinity,
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          if (false)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 24.0, 20.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'SAVED CARDS',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 12.0,
                                              letterSpacing: 0.4,
                                              fontWeight: FontWeight.normal,
                                            ),
                                      ),
                                    ],
                                  ),
                                  if (false)
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 16.0, 0.0, 0.0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.paymentMethod = 'AXIS';
                                              setState(() {});
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              decoration: const BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 48.0,
                                                    height: 48.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0xFFF2F2F2),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(12.0),
                                                      child: Image.asset(
                                                        'assets/images/pngwing_1.png',
                                                        width: 100.0,
                                                        height: 100.0,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'Axis Bank',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'XXXX 4002',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/Vector.png',
                                                                    height: 9.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (_model
                                                              .paymentMethod !=
                                                          'AXIS')
                                                        Icon(
                                                          Icons
                                                              .radio_button_off,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      if (_model
                                                              .paymentMethod ==
                                                          'AXIS')
                                                        Icon(
                                                          Icons
                                                              .radio_button_checked,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.paymentMethod = 'ICICI';
                                              setState(() {});
                                            },
                                            child: Container(
                                              width: double.infinity,
                                              decoration: const BoxDecoration(),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Container(
                                                    width: 48.0,
                                                    height: 48.0,
                                                    decoration: BoxDecoration(
                                                      color: FlutterFlowTheme
                                                              .of(context)
                                                          .secondaryBackground,
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              12.0),
                                                      border: Border.all(
                                                        color:
                                                            const Color(0xFFF2F2F2),
                                                      ),
                                                    ),
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsets.all(12.0),
                                                      child: Image.asset(
                                                        'assets/images/icici-bank_1.png',
                                                        width: 100.0,
                                                        height: 100.0,
                                                        fit: BoxFit.contain,
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  12.0,
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Text(
                                                            'ICICI Bank',
                                                            style: FlutterFlowTheme
                                                                    .of(context)
                                                                .bodyMedium
                                                                .override(
                                                                  fontFamily:
                                                                      'Manrope',
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        4.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Text(
                                                                  'XXXX 9788',
                                                                  style: FlutterFlowTheme.of(
                                                                          context)
                                                                      .bodyMedium
                                                                      .override(
                                                                        fontFamily:
                                                                            'Manrope',
                                                                        letterSpacing:
                                                                            0.0,
                                                                        fontWeight:
                                                                            FontWeight.bold,
                                                                      ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          6.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Image
                                                                      .asset(
                                                                    'assets/images/Vector.png',
                                                                    height: 9.0,
                                                                    fit: BoxFit
                                                                        .contain,
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                  Row(
                                                    mainAxisSize:
                                                        MainAxisSize.max,
                                                    children: [
                                                      if (_model
                                                              .paymentMethod !=
                                                          'ICICI')
                                                        Icon(
                                                          Icons
                                                              .radio_button_off,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                      if (_model
                                                              .paymentMethod ==
                                                          'ICICI')
                                                        Icon(
                                                          Icons
                                                              .radio_button_checked,
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          size: 24.0,
                                                        ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ].divide(const SizedBox(height: 12.0)),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          if (false)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 24.0, 20.0, 0.0),
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                children: [
                                  Row(
                                    mainAxisSize: MainAxisSize.max,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'WALLETS',
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Manrope',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 13.0,
                                              letterSpacing: 0.0,
                                            ),
                                      ),
                                      const Icon(
                                        Icons.keyboard_arrow_down,
                                        color: Color(0xFF828282),
                                        size: 24.0,
                                      ),
                                    ],
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 12.0, 0.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Container(
                                            width: 48.0,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: const Color(0xFFF2F2F2),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset(
                                                'assets/images/amazon-pay.png',
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Container(
                                            width: 48.0,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: const Color(0xFFF2F2F2),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset(
                                                'assets/images/Paytm_logo.png',
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Container(
                                            width: 48.0,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: const Color(0xFFF2F2F2),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset(
                                                'assets/images/phonepe-logo-icon.png',
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Container(
                                            width: 48.0,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: const Color(0xFFF2F2F2),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset(
                                                'assets/images/freecharge-logo-icon.png',
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 12.0, 0.0),
                                          child: Container(
                                            width: 48.0,
                                            height: 48.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryBackground,
                                              borderRadius:
                                                  BorderRadius.circular(12.0),
                                              border: Border.all(
                                                color: const Color(0xFFF2F2F2),
                                              ),
                                            ),
                                            child: Padding(
                                              padding: const EdgeInsets.all(12.0),
                                              child: Image.asset(
                                                'assets/images/mobikwik-logo-icon.png',
                                                width: 100.0,
                                                height: 100.0,
                                                fit: BoxFit.contain,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          if (false)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 36.0, 20.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  _model.paymentMethod = 'COD';
                                  setState(() {});
                                },
                                child: Container(
                                  width: double.infinity,
                                  decoration: const BoxDecoration(),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Container(
                                        width: 48.0,
                                        height: 48.0,
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .secondaryBackground,
                                          borderRadius:
                                              BorderRadius.circular(6.0),
                                          border: Border.all(
                                            color: const Color(0xFFF2F2F2),
                                          ),
                                        ),
                                        child: Icon(
                                          FFIcons.kcurrencyDollar,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ),
                                      Expanded(
                                        child: Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  12.0, 0.0, 0.0, 0.0),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Cash on delivery',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          fontSize: 14.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.bold,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: Text(
                                                  'Nominal fee of 5 cents will be charged',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 12.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          if (_model.paymentMethod != 'COD')
                                            Icon(
                                              Icons.radio_button_off,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                          if (_model.paymentMethod == 'COD')
                                            Icon(
                                              Icons.radio_button_checked,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                              size: 24.0,
                                            ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          if (false)
                            Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  20.0, 24.0, 20.0, 0.0),
                              child: InkWell(
                                splashColor: Colors.transparent,
                                focusColor: Colors.transparent,
                                hoverColor: Colors.transparent,
                                highlightColor: Colors.transparent,
                                onTap: () async {
                                  context.pushNamed('Coupons');
                                },
                                child: Container(
                                  width: double.infinity,
                                  height: 55.0,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .secondaryBackground,
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                      color: FlutterFlowTheme.of(context)
                                          .lineColor,
                                    ),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        12.0, 0.0, 12.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Icon(
                                          FFIcons.kticket,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                        Expanded(
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    12.0, 0.0, 0.0, 0.0),
                                            child: Text(
                                              'Apply promo code',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                            ),
                                          ),
                                        ),
                                        Icon(
                                          Icons.keyboard_arrow_right,
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          size: 24.0,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 12.0, 0.0, 0.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: double.infinity,
                                  height: 36.0,
                                  decoration: const BoxDecoration(),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 0.0, 20.0, 0.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'PRICE DETAILS',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Manrope',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 12.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w600,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    color: FlutterFlowTheme.of(context)
                                        .primaryBackground,
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        20.0, 12.0, 20.0, 12.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Price',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  '\$${valueOrDefault<String>(
                                                    functions
                                                        .cartValue(
                                                            containerCartRecordList
                                                                .map((e) => e
                                                                    .cartItem
                                                                    .regularPrice)
                                                                .toList(),
                                                            containerCartRecordList
                                                                .map((e) => e
                                                                    .cartItem
                                                                    .quantity)
                                                                .toList())
                                                        .toString(),
                                                    '1',
                                                  )}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                            if (false)
                                              Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text(
                                                    'Delivery Charges',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                  Text(
                                                    'FREE',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Manrope',
                                                          color:
                                                              const Color(0xFF00B800),
                                                          fontSize: 13.0,
                                                          letterSpacing: 0.0,
                                                        ),
                                                  ),
                                                ],
                                              ),
                                            Row(
                                              mainAxisSize: MainAxisSize.max,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  'Discount',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                                Text(
                                                  '\$${valueOrDefault<String>(
                                                    formatNumber(
                                                      valueOrDefault<double>(
                                                            functions.cartValue(
                                                                containerCartRecordList
                                                                    .map((e) => e
                                                                        .cartItem
                                                                        .regularPrice)
                                                                    .toList(),
                                                                containerCartRecordList
                                                                    .map((e) => e
                                                                        .cartItem
                                                                        .quantity)
                                                                    .toList()),
                                                            0.0,
                                                          ) -
                                                          valueOrDefault<
                                                              double>(
                                                            functions.cartValue(
                                                                containerCartRecordList
                                                                    .map((e) => e
                                                                        .cartItem
                                                                        .salePrice)
                                                                    .toList(),
                                                                containerCartRecordList
                                                                    .map((e) => e
                                                                        .cartItem
                                                                        .quantity)
                                                                    .toList()),
                                                            0.0,
                                                          ),
                                                      formatType:
                                                          FormatType.custom,
                                                      format: '#.##',
                                                      locale: 'en_US',
                                                    ),
                                                    '0',
                                                  )}',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 13.0,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ],
                                            ),
                                          ].divide(const SizedBox(height: 12.0)),
                                        ),
                                        Divider(
                                          height: 24.0,
                                          thickness: 1.0,
                                          color: FlutterFlowTheme.of(context)
                                              .lineColor,
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Total Amount',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Manrope',
                                                        fontSize: 14.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                            Text(
                                              '\$${valueOrDefault<String>(
                                                functions
                                                    .cartValue(
                                                        containerCartRecordList
                                                            .map((e) => e
                                                                .cartItem
                                                                .salePrice)
                                                            .toList(),
                                                        containerCartRecordList
                                                            .map((e) => e
                                                                .cartItem
                                                                .quantity)
                                                            .toList())
                                                    .toString(),
                                                '1',
                                              )}',
                                              style: FlutterFlowTheme.of(
                                                      context)
                                                  .bodyMedium
                                                  .override(
                                                    fontFamily: 'Manrope',
                                                    color: FlutterFlowTheme.of(
                                                            context)
                                                        .primaryText,
                                                    fontSize: 14.0,
                                                    letterSpacing: 0.0,
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 1.0),
                    child: Container(
                      width: double.infinity,
                      height: 120.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                        boxShadow: const [
                          BoxShadow(
                            blurRadius: 4.0,
                            color: Color(0x33000000),
                            offset: Offset(
                              0.0,
                              2.0,
                            ),
                          )
                        ],
                      ),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            20.0, 0.0, 20.0, 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Expanded(
                              child: Column(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 6.0),
                                    child: Text(
                                      'payable amount',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Manrope',
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.w600,
                                          ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        0.0, 0.0, 0.0, 6.0),
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        RichText(
                                          textScaler:
                                              MediaQuery.of(context).textScaler,
                                          text: TextSpan(
                                            children: [
                                              const TextSpan(
                                                text: '\$',
                                                style: TextStyle(),
                                              ),
                                              TextSpan(
                                                text: functions
                                                    .cartValue(
                                                        containerCartRecordList
                                                            .map((e) => e
                                                                .cartItem
                                                                .salePrice)
                                                            .toList(),
                                                        containerCartRecordList
                                                            .map((e) => e
                                                                .cartItem
                                                                .quantity)
                                                            .toList())
                                                    .toString(),
                                                style: const TextStyle(),
                                              )
                                            ],
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  fontSize: 16.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  2.0, 0.0, 0.0, 2.0),
                                          child: Text(
                                            'Details',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Manrope',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primary,
                                                  fontSize: 10.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w600,
                                                ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            FFButtonWidget(
                              onPressed: () async {
                                if (containerCartRecordList.isNotEmpty) {
                                  _model.generatedOrderId =
                                      await actions.orderGenerator();
                                  while (_model.loop <
                                      containerCartRecordList.length) {
                                    _model.loop = _model.loop + 1;
                                    setState(() {});

                                    await OrdersRecord.collection.doc().set({
                                      ...createOrdersRecordData(
                                        orderId: _model.generatedOrderId,
                                        user: currentUserReference,
                                        createdAt: getCurrentTimestamp,
                                        orderValue: createOrderValueStruct(
                                          subTotal: functions.cartValue(
                                              containerCartRecordList
                                                  .map((e) =>
                                                      e.cartItem.salePrice)
                                                  .toList(),
                                              containerCartRecordList
                                                  .map((e) =>
                                                      e.cartItem.quantity)
                                                  .toList()),
                                          discount: (functions.cartValue(
                                                  containerCartRecordList
                                                      .map((e) => e.cartItem
                                                          .regularPrice)
                                                      .toList(),
                                                  containerCartRecordList
                                                      .map((e) =>
                                                          e.cartItem.quantity)
                                                      .toList())!) -
                                              (functions.cartValue(
                                                  containerCartRecordList
                                                      .map((e) =>
                                                          e.cartItem.salePrice)
                                                      .toList(),
                                                  containerCartRecordList
                                                      .map((e) =>
                                                          e.cartItem.quantity)
                                                      .toList())!),
                                          deliveryCharge: 0.0,
                                          tax: 0.0,
                                          totalAmount: functions.cartValue(
                                              containerCartRecordList
                                                  .map((e) =>
                                                      e.cartItem.salePrice)
                                                  .toList(),
                                              containerCartRecordList
                                                  .map((e) =>
                                                      e.cartItem.quantity)
                                                  .toList()),
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        shippingAddress: updateAddressStruct(
                                          FFAppState().selectedAddress,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        payment: createPaymentDetailsStruct(
                                          amount: functions.cartValue(
                                              containerCartRecordList
                                                  .map((e) =>
                                                      e.cartItem.salePrice)
                                                  .toList(),
                                              containerCartRecordList
                                                  .map((e) =>
                                                      e.cartItem.quantity)
                                                  .toList()),
                                          timestamp: getCurrentTimestamp,
                                          clearUnsetFields: false,
                                          create: true,
                                        ),
                                        status: 'processing',
                                      ),
                                      ...mapToFirestore(
                                        {
                                          'order_item': [
                                            getProductFirestoreData(
                                              updateProductStruct(
                                                containerCartRecordList[
                                                        _model.loop]
                                                    .cartItem,
                                                clearUnsetFields: false,
                                                create: true,
                                              ),
                                              true,
                                            )
                                          ],
                                          'productRef': containerCartRecordList
                                              .map((e) => e.cartItem.productRef)
                                              .withoutNulls
                                              .toList(),
                                        },
                                      ),
                                    });

                                    await containerCartRecordList[_model.loop]
                                        .cartItem
                                        .productRef!
                                        .update({
                                      ...mapToFirestore(
                                        {
                                          'total_sold': FieldValue.increment(
                                              containerCartRecordList[
                                                      _model.loop]
                                                  .cartItem
                                                  .quantity),
                                        },
                                      ),
                                    });
                                  }

                                  var ordersRecordReference2 =
                                      OrdersRecord.collection.doc();
                                  await ordersRecordReference2.set({
                                    ...createOrdersRecordData(
                                      orderId: _model.generatedOrderId,
                                      user: currentUserReference,
                                      createdAt: getCurrentTimestamp,
                                      orderValue: createOrderValueStruct(
                                        subTotal: functions.cartValue(
                                            containerCartRecordList
                                                .map(
                                                    (e) => e.cartItem.salePrice)
                                                .toList(),
                                            containerCartRecordList
                                                .map((e) => e.cartItem.quantity)
                                                .toList()),
                                        discount: (functions.cartValue(
                                                containerCartRecordList
                                                    .map((e) =>
                                                        e.cartItem.regularPrice)
                                                    .toList(),
                                                containerCartRecordList
                                                    .map((e) =>
                                                        e.cartItem.quantity)
                                                    .toList())!) -
                                            (functions.cartValue(
                                                containerCartRecordList
                                                    .map((e) =>
                                                        e.cartItem.salePrice)
                                                    .toList(),
                                                containerCartRecordList
                                                    .map((e) =>
                                                        e.cartItem.quantity)
                                                    .toList())!),
                                        deliveryCharge: 0.0,
                                        tax: 0.0,
                                        totalAmount: functions.cartValue(
                                            containerCartRecordList
                                                .map(
                                                    (e) => e.cartItem.salePrice)
                                                .toList(),
                                            containerCartRecordList
                                                .map((e) => e.cartItem.quantity)
                                                .toList()),
                                        clearUnsetFields: false,
                                        create: true,
                                      ),
                                      shippingAddress: updateAddressStruct(
                                        FFAppState().selectedAddress,
                                        clearUnsetFields: false,
                                        create: true,
                                      ),
                                      payment: createPaymentDetailsStruct(
                                        amount: functions.cartValue(
                                            containerCartRecordList
                                                .map(
                                                    (e) => e.cartItem.salePrice)
                                                .toList(),
                                            containerCartRecordList
                                                .map((e) => e.cartItem.quantity)
                                                .toList()),
                                        paymentMethod: _model.paymentMethod,
                                        timestamp: getCurrentTimestamp,
                                        clearUnsetFields: false,
                                        create: true,
                                      ),
                                      status: 'processing',
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'order_item':
                                            getProductListFirestoreData(
                                          containerCartRecordList
                                              .map((e) => e.cartItem)
                                              .toList(),
                                        ),
                                        'productRef': containerCartRecordList
                                            .map((e) => e.cartItem.productRef)
                                            .withoutNulls
                                            .toList(),
                                      },
                                    ),
                                  });
                                  _model.createdOrder =
                                      OrdersRecord.getDocumentFromData({
                                    ...createOrdersRecordData(
                                      orderId: _model.generatedOrderId,
                                      user: currentUserReference,
                                      createdAt: getCurrentTimestamp,
                                      orderValue: createOrderValueStruct(
                                        subTotal: functions.cartValue(
                                            containerCartRecordList
                                                .map(
                                                    (e) => e.cartItem.salePrice)
                                                .toList(),
                                            containerCartRecordList
                                                .map((e) => e.cartItem.quantity)
                                                .toList()),
                                        discount: (functions.cartValue(
                                                containerCartRecordList
                                                    .map((e) =>
                                                        e.cartItem.regularPrice)
                                                    .toList(),
                                                containerCartRecordList
                                                    .map((e) =>
                                                        e.cartItem.quantity)
                                                    .toList())!) -
                                            (functions.cartValue(
                                                containerCartRecordList
                                                    .map((e) =>
                                                        e.cartItem.salePrice)
                                                    .toList(),
                                                containerCartRecordList
                                                    .map((e) =>
                                                        e.cartItem.quantity)
                                                    .toList())!),
                                        deliveryCharge: 0.0,
                                        tax: 0.0,
                                        totalAmount: functions.cartValue(
                                            containerCartRecordList
                                                .map(
                                                    (e) => e.cartItem.salePrice)
                                                .toList(),
                                            containerCartRecordList
                                                .map((e) => e.cartItem.quantity)
                                                .toList()),
                                        clearUnsetFields: false,
                                        create: true,
                                      ),
                                      shippingAddress: updateAddressStruct(
                                        FFAppState().selectedAddress,
                                        clearUnsetFields: false,
                                        create: true,
                                      ),
                                      payment: createPaymentDetailsStruct(
                                        amount: functions.cartValue(
                                            containerCartRecordList
                                                .map(
                                                    (e) => e.cartItem.salePrice)
                                                .toList(),
                                            containerCartRecordList
                                                .map((e) => e.cartItem.quantity)
                                                .toList()),
                                        paymentMethod: _model.paymentMethod,
                                        timestamp: getCurrentTimestamp,
                                        clearUnsetFields: false,
                                        create: true,
                                      ),
                                      status: 'processing',
                                    ),
                                    ...mapToFirestore(
                                      {
                                        'order_item':
                                            getProductListFirestoreData(
                                          containerCartRecordList
                                              .map((e) => e.cartItem)
                                              .toList(),
                                        ),
                                        'productRef': containerCartRecordList
                                            .map((e) => e.cartItem.productRef)
                                            .withoutNulls
                                            .toList(),
                                      },
                                    ),
                                  }, ordersRecordReference2);
                                  await actions.deleteRecords(
                                    containerCartRecordList
                                        .map((e) => e.reference)
                                        .toList(),
                                  );
                                  FFAppState().cartItems = [];
                                  FFAppState().update(() {});

                                  context.goNamed(
                                    'OrderSuccess',
                                    queryParameters: {
                                      'order': serializeParam(
                                        _model.createdOrder,
                                        ParamType.Document,
                                      ),
                                    }.withoutNulls,
                                    extra: <String, dynamic>{
                                      'order': _model.createdOrder,
                                      kTransitionInfoKey: const TransitionInfo(
                                        hasTransition: true,
                                        transitionType: PageTransitionType.fade,
                                      ),
                                    },
                                  );
                                } else {
                                  if (Navigator.of(context).canPop()) {
                                    context.pop();
                                  }
                                  context.pushNamed('Cart');
                                }

                                setState(() {});
                              },
                              text: 'Continue',
                              options: FFButtonOptions(
                                width: 130.0,
                                height: 48.0,
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                iconPadding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 0.0, 0.0, 0.0),
                                color: FlutterFlowTheme.of(context).primary,
                                textStyle: FlutterFlowTheme.of(context)
                                    .titleSmall
                                    .override(
                                      fontFamily: 'Manrope',
                                      color: FlutterFlowTheme.of(context)
                                          .primaryBtnText,
                                      fontSize: 14.0,
                                      letterSpacing: 0.0,
                                    ),
                                elevation: 0.0,
                                borderSide: BorderSide(
                                  color: FlutterFlowTheme.of(context).primary,
                                  width: 0.0,
                                ),
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
