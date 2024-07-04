import '/auth/firebase_auth/auth_util.dart';
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'clear_notifications_prompt_model.dart';
export 'clear_notifications_prompt_model.dart';

class ClearNotificationsPromptWidget extends StatefulWidget {
  const ClearNotificationsPromptWidget({super.key});

  @override
  State<ClearNotificationsPromptWidget> createState() =>
      _ClearNotificationsPromptWidgetState();
}

class _ClearNotificationsPromptWidgetState
    extends State<ClearNotificationsPromptWidget> {
  late ClearNotificationsPromptModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ClearNotificationsPromptModel());

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
      padding: const EdgeInsetsDirectional.fromSTEB(0.0, 24.0, 24.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          _model.notifications = await queryNotificationsRecordOnce(
            parent: currentUserReference,
          );
          await actions.deleteNotifications(
            _model.notifications!.map((e) => e.reference).toList(),
          );
          Navigator.pop(context);

          setState(() {});
        },
        child: Material(
          color: Colors.transparent,
          elevation: 2.0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.0),
          ),
          child: Container(
            height: 36.0,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).secondaryBackground,
              borderRadius: BorderRadius.circular(24.0),
            ),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Clear notifications',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        letterSpacing: 0.0,
                      ),
                ),
                Icon(
                  Icons.close,
                  color: FlutterFlowTheme.of(context).secondaryText,
                  size: 18.0,
                ),
              ]
                  .divide(const SizedBox(width: 6.0))
                  .addToStart(const SizedBox(width: 16.0))
                  .addToEnd(const SizedBox(width: 16.0)),
            ),
          ),
        ),
      ),
    );
  }
}
