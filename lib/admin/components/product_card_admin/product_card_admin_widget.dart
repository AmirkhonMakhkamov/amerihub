import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'product_card_admin_model.dart';
export 'product_card_admin_model.dart';

class ProductCardAdminWidget extends StatefulWidget {
  const ProductCardAdminWidget({
    super.key,
    required this.productTitle,
    required this.price,
    required this.sold,
    required this.sales,
    required this.productPhoto,
  });

  final String? productTitle;
  final double? price;
  final int? sold;
  final double? sales;
  final String? productPhoto;

  @override
  State<ProductCardAdminWidget> createState() => _ProductCardAdminWidgetState();
}

class _ProductCardAdminWidgetState extends State<ProductCardAdminWidget> {
  late ProductCardAdminModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ProductCardAdminModel());

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
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Container(
              width: 36.0,
              decoration: const BoxDecoration(),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: 36.0,
                    height: 36.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).tertiaryBackgroundALT,
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Padding(
                      padding: const EdgeInsets.all(6.0),
                      child: Image.network(
                        valueOrDefault<String>(
                          widget.productPhoto,
                          'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/blogging-app-5ftvbp/assets/b60ls0hhyo3h/thumbnail-3.png',
                        ),
                        width: 300.0,
                        height: 200.0,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Text(
                    widget.productTitle!.maybeHandleOverflow(
                      maxChars: 40,
                      replacement: '…',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Sans HK',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                ].divide(const SizedBox(width: 24.0)),
              ),
            ),
          ),
          Container(
            width: 120.0,
            decoration: const BoxDecoration(),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Sans HK',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      formatNumber(
                        widget.price,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.periodDecimal,
                      ),
                      '0',
                    ),
                    style: GoogleFonts.getFont(
                      'Noto Sans HK',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans HK',
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
            ),
          ),
          Container(
            width: 120.0,
            decoration: const BoxDecoration(),
            child: Text(
              valueOrDefault<String>(
                widget.sold?.toString(),
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
          ),
          Container(
            width: 120.0,
            decoration: const BoxDecoration(),
            child: RichText(
              textScaler: MediaQuery.of(context).textScaler,
              text: TextSpan(
                children: [
                  TextSpan(
                    text: '\$',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Noto Sans HK',
                          color: FlutterFlowTheme.of(context).primaryText,
                          fontSize: 12.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  TextSpan(
                    text: valueOrDefault<String>(
                      formatNumber(
                        widget.sales,
                        formatType: FormatType.decimal,
                        decimalType: DecimalType.periodDecimal,
                      ),
                      '0',
                    ),
                    style: GoogleFonts.getFont(
                      'Noto Sans HK',
                      color: FlutterFlowTheme.of(context).primaryText,
                      fontWeight: FontWeight.w500,
                      fontSize: 12.0,
                    ),
                  )
                ],
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans HK',
                      fontSize: 12.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.normal,
                    ),
              ),
              textAlign: TextAlign.end,
            ),
          ),
        ].divide(const SizedBox(width: 12.0)),
      ),
    );
  }
}
