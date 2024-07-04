import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'showcase_card1_model.dart';
export 'showcase_card1_model.dart';

class ShowcaseCard1Widget extends StatefulWidget {
  const ShowcaseCard1Widget({
    super.key,
    required this.image,
    required this.title,
    required this.description,
    this.navigateAction,
  });

  final String? image;
  final String? title;
  final String? description;
  final Future Function()? navigateAction;

  @override
  State<ShowcaseCard1Widget> createState() => _ShowcaseCard1WidgetState();
}

class _ShowcaseCard1WidgetState extends State<ShowcaseCard1Widget> {
  late ShowcaseCard1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShowcaseCard1Model());

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
          width: 228.0,
          height: 276.0,
          decoration: BoxDecoration(
            color: valueOrDefault<Color>(
              _model.mouseRegionHovered
                  ? FlutterFlowTheme.of(context).secondaryBackgroundALT
                  : FlutterFlowTheme.of(context).primaryBackgroundALT,
              FlutterFlowTheme.of(context).primaryBackgroundALT,
            ),
            borderRadius: BorderRadius.circular(6.0),
            border: Border.all(
              color: FlutterFlowTheme.of(context).lineColor,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    widget.image!,
                    width: 40.0,
                    height: 40.0,
                    fit: BoxFit.cover,
                  ),
                ),
                Text(
                  valueOrDefault<String>(
                    widget.title,
                    'Admin',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                Container(
                  width: 180.0,
                  decoration: const BoxDecoration(),
                  child: Text(
                    valueOrDefault<String>(
                      widget.description,
                      'Promote, control, and manage total business centrally with real-time reporting system & POS order.',
                    ),
                    textAlign: TextAlign.center,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ].divide(const SizedBox(height: 12.0)),
            ),
          ),
        ),
      ),
    );
  }
}
