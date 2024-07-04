import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'address_empty_model.dart';
export 'address_empty_model.dart';

class AddressEmptyWidget extends StatefulWidget {
  const AddressEmptyWidget({super.key});

  @override
  State<AddressEmptyWidget> createState() => _AddressEmptyWidgetState();
}

class _AddressEmptyWidgetState extends State<AddressEmptyWidget> {
  late AddressEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AddressEmptyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: SvgPicture.asset(
            'assets/images/undraw_my_location_re_r52x.svg',
            height: 160.0,
            fit: BoxFit.contain,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'SAVE YOUR ADDRESS NOW',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                'Add your home or office address and enjoy faster checkout',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 6.0)),
          ),
        ),
        FFButtonWidget(
          onPressed: () async {
            if (Navigator.of(context).canPop()) {
              context.pop();
            }
            context.pushNamed(
              'AddressAdd_2',
              extra: <String, dynamic>{
                kTransitionInfoKey: const TransitionInfo(
                  hasTransition: true,
                  transitionType: PageTransitionType.fade,
                ),
              },
            );
          },
          text: 'ADD NEW ADDRESS',
          icon: const Icon(
            Icons.add,
            size: 16.0,
          ),
          options: FFButtonOptions(
            height: 48.0,
            padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
            iconPadding: const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
            color: FlutterFlowTheme.of(context).tertiaryBackground,
            textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                  fontFamily: 'Manrope',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 12.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w600,
                ),
            elevation: 0.0,
            borderSide: BorderSide(
              color: FlutterFlowTheme.of(context).lineColor,
              width: 1.0,
            ),
            borderRadius: BorderRadius.circular(4.0),
          ),
        ),
      ].divide(const SizedBox(height: 24.0)),
    );
  }
}
