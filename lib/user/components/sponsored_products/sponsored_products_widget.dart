import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_toggle_icon.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:provider/provider.dart';
import 'sponsored_products_model.dart';
export 'sponsored_products_model.dart';

class SponsoredProductsWidget extends StatefulWidget {
  const SponsoredProductsWidget({
    super.key,
    this.isFavourite,
    this.productImage,
    this.productTitle,
    this.productCategory,
    this.salePrice,
    this.regularPrice,
    this.productRating,
  });

  final bool? isFavourite;
  final String? productImage;
  final String? productTitle;
  final String? productCategory;
  final double? salePrice;
  final double? regularPrice;
  final double? productRating;

  @override
  State<SponsoredProductsWidget> createState() =>
      _SponsoredProductsWidgetState();
}

class _SponsoredProductsWidgetState extends State<SponsoredProductsWidget> {
  late SponsoredProductsModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SponsoredProductsModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Container(
      width: 160.0,
      height: 230.0,
      decoration: BoxDecoration(
        color: FlutterFlowTheme.of(context).secondaryBackground,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  width: 30.0,
                  height: 30.0,
                  decoration: BoxDecoration(
                    color: const Color(0xFFF5F5F7),
                    borderRadius: BorderRadius.circular(15.0),
                  ),
                  child: ToggleIcon(
                    onPressed: () async {
                      setState(() =>
                          FFAppState().isfavourite = !FFAppState().isfavourite);
                    },
                    value: FFAppState().isfavourite,
                    onIcon: const Icon(
                      Icons.favorite_rounded,
                      color: Color(0xFFFF3535),
                      size: 14.0,
                    ),
                    offIcon: const Icon(
                      Icons.favorite_border,
                      color: Color(0xFFFF3535),
                      size: 14.0,
                    ),
                  ),
                ),
              ],
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
                child: Image.network(
                  widget.productImage!,
                  width: 100.0,
                  height: 60.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 9.0, 0.0, 0.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    valueOrDefault<String>(
                      widget.productTitle,
                      'NA',
                    ),
                    maxLines: 2,
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Manrope',
                          letterSpacing: 0.0,
                        ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 2.0, 0.0, 2.0),
                    child: Text(
                      valueOrDefault<String>(
                        widget.productCategory,
                        'NA',
                      ),
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Manrope',
                            color: FlutterFlowTheme.of(context).secondaryText,
                            fontSize: 11.0,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 2.0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Text(
                          valueOrDefault<String>(
                            widget.salePrice?.toString(),
                            '0.00',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Manrope',
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              2.0, 0.0, 0.0, 2.0),
                          child: Text(
                            'USD',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  fontSize: 9.0,
                                  letterSpacing: 0.0,
                                ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              6.0, 0.0, 0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.regularPrice?.toString(),
                              '0.00',
                            ),
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Manrope',
                                  color: const Color(0xFFFF3535),
                                  letterSpacing: 0.0,
                                  decoration: TextDecoration.lineThrough,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  RatingBarIndicator(
                    itemBuilder: (context, index) => const Icon(
                      Icons.star_rounded,
                      color: Color(0xFFFFC107),
                    ),
                    direction: Axis.horizontal,
                    rating: widget.productRating!,
                    unratedColor: const Color(0xFF9E9E9E),
                    itemCount: 5,
                    itemSize: 12.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
