import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'sales_card_model.dart';
export 'sales_card_model.dart';

class SalesCardWidget extends StatefulWidget {
  const SalesCardWidget({super.key});

  @override
  State<SalesCardWidget> createState() => _SalesCardWidgetState();
}

class _SalesCardWidgetState extends State<SalesCardWidget> {
  late SalesCardModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SalesCardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<OrdersRecord>>(
      stream: queryOrdersRecord(
        queryBuilder: (ordersRecord) => ordersRecord
            .where(
              'created_at',
              isGreaterThan: functions.timeStampRange(7),
            )
            .orderBy('created_at'),
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
        List<OrdersRecord> containerOrdersRecordList = snapshot.data!;
        return Container(
          width: 503.0,
          height: 300.0,
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackgroundALT,
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Total Sales',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Noto Sans HK',
                                    fontSize: 16.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w500,
                                  ),
                        ),
                        Text(
                          'Sales states of this week',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Noto Sans HK',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                fontSize: 12.0,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ].divide(const SizedBox(height: 4.0)),
                    ),
                  ],
                ),
                Expanded(
                  child: Stack(
                    alignment: const AlignmentDirectional(0.0, -1.0),
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                22.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 0.0, 0.0, 22.0),
                            child: Container(
                              width: 16.0,
                              height: 210.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context)
                                    .tertiaryBackground,
                                borderRadius: const BorderRadius.only(
                                  bottomLeft: Radius.circular(0.0),
                                  bottomRight: Radius.circular(0.0),
                                  topLeft: Radius.circular(2.0),
                                  topRight: Radius.circular(2.0),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ].divide(const SizedBox(height: 24.0)),
            ),
          ),
        );
      },
    );
  }
}
