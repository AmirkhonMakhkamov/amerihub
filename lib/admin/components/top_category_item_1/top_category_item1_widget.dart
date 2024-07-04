import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'top_category_item1_model.dart';
export 'top_category_item1_model.dart';

class TopCategoryItem1Widget extends StatefulWidget {
  const TopCategoryItem1Widget({
    super.key,
    required this.rank,
    required this.category,
    required this.sales,
    required this.color,
  });

  final int? rank;
  final String? category;
  final int? sales;
  final Color? color;

  @override
  State<TopCategoryItem1Widget> createState() => _TopCategoryItem1WidgetState();
}

class _TopCategoryItem1WidgetState extends State<TopCategoryItem1Widget> {
  late TopCategoryItem1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TopCategoryItem1Model());

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
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 36.0,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Text(
                  '#${widget.rank?.toString()}',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans HK',
                        color: widget.color,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Container(
              width: 36.0,
              decoration: const BoxDecoration(),
              child: Text(
                widget.category!,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans HK',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Container(
            width: 36.0,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  valueOrDefault<String>(
                    widget.sales?.toString(),
                    '0',
                  ),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans HK',
                        color: FlutterFlowTheme.of(context).primaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ],
            ),
          ),
        ].divide(const SizedBox(width: 12.0)),
      ),
    );
  }
}
