import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'category_item2_model.dart';
export 'category_item2_model.dart';

class CategoryItem2Widget extends StatefulWidget {
  const CategoryItem2Widget({
    super.key,
    required this.title,
    required this.image,
  });

  final String? title;
  final String? image;

  @override
  State<CategoryItem2Widget> createState() => _CategoryItem2WidgetState();
}

class _CategoryItem2WidgetState extends State<CategoryItem2Widget> {
  late CategoryItem2Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => CategoryItem2Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () async {
        context.pushNamed(
          'CategoryFilter',
          queryParameters: {
            'category': serializeParam(
              widget.title,
              ParamType.String,
            ),
          }.withoutNulls,
        );
      },
      child: Container(
        width: 84.0,
        height: 84.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).tertiaryBackground,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network(
              widget.image!,
              width: 48.0,
              height: 48.0,
              fit: BoxFit.contain,
              errorBuilder: (context, error, stackTrace) => Image.asset(
                'assets/images/error_image.png',
                width: 48.0,
                height: 48.0,
                fit: BoxFit.contain,
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(4.0, 0.0, 4.0, 0.0),
              child: Text(
                valueOrDefault<String>(
                  widget.title,
                  'NA',
                ).maybeHandleOverflow(
                  maxChars: 20,
                  replacement: '…',
                ),
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
