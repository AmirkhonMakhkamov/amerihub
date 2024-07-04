import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'order_item_seller_model.dart';
export 'order_item_seller_model.dart';

class OrderItemSellerWidget extends StatefulWidget {
  const OrderItemSellerWidget({
    super.key,
    bool? selected,
    required this.data,
  }) : selected = selected ?? false;

  final bool selected;
  final OrdersRecord? data;

  @override
  State<OrderItemSellerWidget> createState() => _OrderItemSellerWidgetState();
}

class _OrderItemSellerWidgetState extends State<OrderItemSellerWidget> {
  late OrderItemSellerModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OrderItemSellerModel());

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
      height: 60.0,
      decoration: const BoxDecoration(),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            width: 32.0,
            height: 32.0,
            decoration: const BoxDecoration(),
            child: Builder(
              builder: (context) {
                if (widget.selected) {
                  return Visibility(
                    visible: widget.selected,
                    child: Icon(
                      Icons.check_box,
                      color: FlutterFlowTheme.of(context).primary,
                      size: 24.0,
                    ),
                  );
                } else {
                  return Visibility(
                    visible: !widget.selected,
                    child: Icon(
                      Icons.check_box_outline_blank,
                      color: FlutterFlowTheme.of(context).secondaryText,
                      size: 24.0,
                    ),
                  );
                }
              },
            ),
          ),
          Container(
            width: 156.0,
            decoration: const BoxDecoration(),
            child: Text(
              valueOrDefault<String>(
                widget.data?.orderId,
                'NA',
              ),
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Noto Sans HK',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Container(
            width: 156.0,
            decoration: const BoxDecoration(),
            child: Text(
              'Date',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Noto Sans HK',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Container(
            width: 120.0,
            decoration: const BoxDecoration(),
            child: Text(
              'Amount',
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Noto Sans HK',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Expanded(
            child: Container(
              width: 180.0,
              decoration: const BoxDecoration(),
              child: Text(
                'Customer',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Noto Sans HK',
                      color: FlutterFlowTheme.of(context).primaryText,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
          ),
          Container(
            width: 120.0,
            decoration: const BoxDecoration(),
            child: Text(
              'Order Status',
              textAlign: TextAlign.end,
              style: FlutterFlowTheme.of(context).bodyMedium.override(
                    fontFamily: 'Noto Sans HK',
                    color: FlutterFlowTheme.of(context).primaryText,
                    letterSpacing: 0.0,
                    fontWeight: FontWeight.w500,
                  ),
            ),
          ),
          Container(
            width: 120.0,
            decoration: const BoxDecoration(),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 10.0,
                  borderWidth: 1.0,
                  buttonSize: 42.0,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  icon: Icon(
                    FFIcons.keye,
                    color: FlutterFlowTheme.of(context).success,
                    size: 16.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
                FlutterFlowIconButton(
                  borderColor: Colors.transparent,
                  borderRadius: 10.0,
                  borderWidth: 1.0,
                  buttonSize: 42.0,
                  fillColor: FlutterFlowTheme.of(context).secondaryBackground,
                  icon: Icon(
                    FFIcons.ktrash2,
                    color: FlutterFlowTheme.of(context).error,
                    size: 16.0,
                  ),
                  onPressed: () {
                    print('IconButton pressed ...');
                  },
                ),
              ].divide(const SizedBox(width: 12.0)),
            ),
          ),
        ]
            .divide(const SizedBox(width: 16.0))
            .addToStart(const SizedBox(width: 12.0))
            .addToEnd(const SizedBox(width: 24.0)),
      ),
    );
  }
}
