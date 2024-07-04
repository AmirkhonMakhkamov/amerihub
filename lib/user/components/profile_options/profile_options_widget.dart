import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'profile_options_model.dart';
export 'profile_options_model.dart';

class ProfileOptionsWidget extends StatefulWidget {
  const ProfileOptionsWidget({
    super.key,
    required this.icon,
    required this.title,
    required this.navigateAction,
  });

  final Widget? icon;
  final String? title;
  final Future Function()? navigateAction;

  @override
  State<ProfileOptionsWidget> createState() => _ProfileOptionsWidgetState();
}

class _ProfileOptionsWidgetState extends State<ProfileOptionsWidget> {
  late ProfileOptionsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProfileOptionsModel());

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
          height: 54.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              _model.mouseRegionHovered
                  ? FlutterFlowTheme.of(context).secondaryBackground
                  : Colors.transparent,
              Colors.transparent,
            ),
            borderRadius: BorderRadius.circular(12.0),
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    widget.icon!,
                    Expanded(
                      child: Text(
                        valueOrDefault<String>(
                          widget.title,
                          'NA',
                        ),
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Manrope',
                              fontSize: 14.0,
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.normal,
                            ),
                      ),
                    ),
                    const Icon(
                      Icons.keyboard_arrow_right,
                      color: Color(0xFF828282),
                      size: 24.0,
                    ),
                  ]
                      .divide(const SizedBox(width: 12.0))
                      .addToStart(const SizedBox(width: 20.0))
                      .addToEnd(const SizedBox(width: 20.0)),
                ),
              ),
              Divider(
                height: 1.0,
                thickness: 1.0,
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
