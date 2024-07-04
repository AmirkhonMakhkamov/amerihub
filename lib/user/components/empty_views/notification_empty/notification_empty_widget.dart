import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'notification_empty_model.dart';
export 'notification_empty_model.dart';

class NotificationEmptyWidget extends StatefulWidget {
  const NotificationEmptyWidget({super.key});

  @override
  State<NotificationEmptyWidget> createState() =>
      _NotificationEmptyWidgetState();
}

class _NotificationEmptyWidgetState extends State<NotificationEmptyWidget> {
  late NotificationEmptyModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NotificationEmptyModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: SvgPicture.asset(
              'assets/images/undraw_push_notifications_re_t84m.svg',
              height: 160.0,
              fit: BoxFit.contain,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Text(
                'NO NOTIFICATIONS',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      fontSize: 14.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                    ),
              ),
              Text(
                'We will notify you once we have something for you',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Manrope',
                      color: FlutterFlowTheme.of(context).secondaryText,
                      letterSpacing: 0.0,
                    ),
              ),
            ].divide(const SizedBox(height: 6.0)),
          ),
        ].divide(const SizedBox(height: 24.0)),
      ),
    );
  }
}
