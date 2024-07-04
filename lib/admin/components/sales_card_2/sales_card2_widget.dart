import '/flutter_flow/flutter_flow_charts.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/custom_functions.dart' as functions;
import 'package:flutter/material.dart';
import 'sales_card2_model.dart';
export 'sales_card2_model.dart';

class SalesCard2Widget extends StatefulWidget {
  const SalesCard2Widget({
    super.key,
    int? successfulOrders,
    int? pendingOrders,
    int? failedOrders,
    int? totalOrders,
  })  : successfulOrders = successfulOrders ?? 0,
        pendingOrders = pendingOrders ?? 0,
        failedOrders = failedOrders ?? 0,
        totalOrders = totalOrders ?? 0;

  final int successfulOrders;
  final int pendingOrders;
  final int failedOrders;
  final int totalOrders;

  @override
  State<SalesCard2Widget> createState() => _SalesCard2WidgetState();
}

class _SalesCard2WidgetState extends State<SalesCard2Widget> {
  late SalesCard2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SalesCard2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 360.0,
      height: 300.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackgroundALT,
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Total Sales',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Noto Sans HK',
                              fontSize: 16.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Text(
                        'Sales states of this week',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Noto Sans HK',
                              color: FlutterFlowTheme.of(context).secondaryText,
                              fontSize: 12.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                    ].divide(const SizedBox(height: 4.0)),
                  ),
                ),
                const Icon(
                  FFIcons.ktrendingUp,
                  color: Color(0xFF00AA07),
                  size: 16.0,
                ),
              ],
            ),
            Expanded(
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Stack(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    children: [
                      SizedBox(
                        width: 100.0,
                        height: 100.0,
                        child: FlutterFlowPieChart(
                          data: FFPieChartData(
                            values: [
                              widget.successfulOrders,
                              widget.pendingOrders,
                              widget.failedOrders
                            ],
                            colors: [
                              const Color(0xFF00AA07),
                              const Color(0xFFFFC632),
                              const Color(0xFFED3333)
                            ],
                            radius: [28.0, 28.0, 28.0],
                            borderColor: [
                              const Color(0x00000000),
                              const Color(0x00000000),
                              const Color(0x00000000)
                            ],
                          ),
                          donutHoleRadius: 48.0,
                          donutHoleColor:
                              FlutterFlowTheme.of(context).tertiaryBackground,
                          sectionLabelStyle: FlutterFlowTheme.of(context)
                              .headlineSmall
                              .override(
                                fontFamily: 'Manrope',
                                letterSpacing: 0.0,
                              ),
                        ),
                      ),
                      Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            '100%',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                          Text(
                            'Ratio',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Success',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: const Color(0xFF00AA07),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            '${valueOrDefault<String>(
                              formatNumber(
                                functions.calculatePercentage(
                                    widget.totalOrders,
                                    widget.successfulOrders),
                                formatType: FormatType.custom,
                                format: '#',
                                locale: 'en_US',
                              ),
                              '0',
                            )} %',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ].divide(const SizedBox(width: 12.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Pending',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: const Color(0xFFFFC632),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            '${valueOrDefault<String>(
                              formatNumber(
                                functions.calculatePercentage(
                                    widget.totalOrders, widget.pendingOrders),
                                formatType: FormatType.custom,
                                format: '#',
                                locale: 'en_US',
                              ),
                              '0',
                            )} %',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ].divide(const SizedBox(width: 12.0)),
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Text(
                            'Failed',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: const Color(0xFFED3333),
                                  fontSize: 12.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w500,
                                ),
                          ),
                          Text(
                            '${valueOrDefault<String>(
                              formatNumber(
                                functions.calculatePercentage(
                                    widget.totalOrders, widget.failedOrders),
                                formatType: FormatType.custom,
                                format: '#',
                                locale: 'en_US',
                              ),
                              '0',
                            )} %',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Noto Sans HK',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ].divide(const SizedBox(width: 12.0)),
                      ),
                    ].divide(const SizedBox(height: 12.0)),
                  ),
                ].divide(const SizedBox(width: 48.0)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
