import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:styled_divider/styled_divider.dart';
import 'package:flutter/material.dart';
import 'sub_menu_option_model.dart';
export 'sub_menu_option_model.dart';

class SubMenuOptionWidget extends StatefulWidget {
  const SubMenuOptionWidget({
    super.key,
    required this.title,
    required this.active,
    required this.lastOption,
    required this.navigateAction,
  });

  final String? title;
  final bool? active;
  final bool? lastOption;
  final Future Function()? navigateAction;

  @override
  State<SubMenuOptionWidget> createState() => _SubMenuOptionWidgetState();
}

class _SubMenuOptionWidgetState extends State<SubMenuOptionWidget> {
  late SubMenuOptionModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SubMenuOptionModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      opaque: false,
      cursor: MouseCursor.defer ?? MouseCursor.defer,
      onEnter: ((event) async {
        setState(() => _model.mouseRegionHovered = true);
      }),
      onExit: ((event) async {
        setState(() => _model.mouseRegionHovered = false);
      }),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          await widget.navigateAction?.call();
        },
        child: Container(
          width: double.infinity,
          height: 48.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              () {
                if (widget.active!) {
                  return FlutterFlowTheme.of(context).secondary;
                } else if (_model.mouseRegionHovered) {
                  return FlutterFlowTheme.of(context).tertiaryBackground;
                } else {
                  return Colors.transparent;
                }
              }(),
              Colors.transparent,
            ),
          ),
          alignment: const AlignmentDirectional(0.0, 0.0),
          child: Builder(
            builder: (context) {
              if (widget.lastOption ?? false) {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 24.0,
                      child: StyledVerticalDivider(
                        width: 1.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        lineStyle: DividerLineStyle.dashed,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 24.0,
                              child: StyledDivider(
                                thickness: 1.0,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.title!,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Noto Sans HK',
                                color: valueOrDefault<Color>(
                                  widget.active!
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  FlutterFlowTheme.of(context).secondaryText,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.normal,
                              ),
                        ),
                      ].divide(const SizedBox(width: 12.0)),
                    ),
                  ]
                      .addToStart(const SizedBox(width: 36.0))
                      .addToEnd(const SizedBox(width: 24.0)),
                );
              } else {
                return Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    SizedBox(
                      height: 48.0,
                      child: StyledVerticalDivider(
                        width: 1.0,
                        thickness: 1.0,
                        color: FlutterFlowTheme.of(context).secondaryText,
                        lineStyle: DividerLineStyle.dashed,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              width: 24.0,
                              child: StyledDivider(
                                thickness: 1.0,
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                lineStyle: DividerLineStyle.dashed,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          widget.title!,
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Noto Sans HK',
                                color: valueOrDefault<Color>(
                                  widget.active!
                                      ? FlutterFlowTheme.of(context).primaryText
                                      : FlutterFlowTheme.of(context)
                                          .secondaryText,
                                  FlutterFlowTheme.of(context).secondaryText,
                                ),
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w300,
                              ),
                        ),
                      ].divide(const SizedBox(width: 12.0)),
                    ),
                  ]
                      .addToStart(const SizedBox(width: 36.0))
                      .addToEnd(const SizedBox(width: 24.0)),
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
