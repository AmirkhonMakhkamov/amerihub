import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'sort_by_model.dart';
export 'sort_by_model.dart';

class SortByWidget extends StatefulWidget {
  const SortByWidget({super.key});

  @override
  State<SortByWidget> createState() => _SortByWidgetState();
}

class _SortByWidgetState extends State<SortByWidget> {
  late SortByModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SortByModel());

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
      width: double.infinity,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
            child: Text(
              'SORT BY',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Manrope',
                    color: FlutterFlowTheme.of(context).secondaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ),
          Divider(
            height: 32.0,
            thickness: 1.0,
            color: FlutterFlowTheme.of(context).lineColor,
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Relevance',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Icon(
                    Icons.radio_button_off,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 20.0))
                    .addToEnd(const SizedBox(width: 20.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Popularity',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Icon(
                    Icons.radio_button_off,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 20.0))
                    .addToEnd(const SizedBox(width: 20.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Price -- Low to High',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Icon(
                    Icons.radio_button_off,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 20.0))
                    .addToEnd(const SizedBox(width: 20.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Price -- High to Low',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Icon(
                    Icons.radio_button_off,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 20.0))
                    .addToEnd(const SizedBox(width: 20.0)),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Text(
                      'Newest First',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w500,
                          ),
                    ),
                  ),
                  Icon(
                    Icons.radio_button_off,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 24.0,
                  ),
                  Icon(
                    Icons.radio_button_checked,
                    color: FlutterFlowTheme.of(context).primary,
                    size: 24.0,
                  ),
                ]
                    .addToStart(const SizedBox(width: 20.0))
                    .addToEnd(const SizedBox(width: 20.0)),
              ),
            ].divide(const SizedBox(height: 8.0)),
          ),
        ].addToStart(const SizedBox(height: 16.0)).addToEnd(const SizedBox(height: 24.0)),
      ),
    );
  }
}
