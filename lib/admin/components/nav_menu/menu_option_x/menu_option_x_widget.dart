import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_option_x_model.dart';
export 'menu_option_x_model.dart';

class MenuOptionXWidget extends StatefulWidget {
  const MenuOptionXWidget({
    super.key,
    required this.title,
    required this.active,
    required this.iconActive,
    required this.iconInactive,
  });

  final String? title;
  final bool? active;
  final Widget? iconActive;
  final Widget? iconInactive;

  @override
  State<MenuOptionXWidget> createState() => _MenuOptionXWidgetState();
}

class _MenuOptionXWidgetState extends State<MenuOptionXWidget> {
  late MenuOptionXModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuOptionXModel());

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
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 100),
        curve: Curves.easeInOut,
        width: double.infinity,
        height: 60.0,
        decoration: const BoxDecoration(
          color: Colors.transparent,
        ),
        alignment: const AlignmentDirectional(0.0, 0.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            widget.active! ? widget.iconActive! : widget.iconInactive!,
            Text(
              widget.title!,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Noto Sans HK',
                    color: valueOrDefault<Color>(
                      widget.active!
                          ? FlutterFlowTheme.of(context).primaryText
                          : FlutterFlowTheme.of(context).secondaryText,
                      FlutterFlowTheme.of(context).secondaryText,
                    ),
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.normal,
                  ),
            ),
          ]
              .divide(const SizedBox(width: 12.0))
              .addToStart(const SizedBox(width: 24.0))
              .addToEnd(const SizedBox(width: 24.0)),
        ),
      ),
    );
  }
}
