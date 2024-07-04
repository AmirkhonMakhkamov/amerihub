import '/auth/firebase_auth/auth_util.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'user_card1_model.dart';
export 'user_card1_model.dart';

class UserCard1Widget extends StatefulWidget {
  const UserCard1Widget({super.key});

  @override
  State<UserCard1Widget> createState() => _UserCard1WidgetState();
}

class _UserCard1WidgetState extends State<UserCard1Widget> {
  late UserCard1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UserCard1Model());

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
          AuthUserStreamWidget(
            builder: (context) => Container(
              width: 48.0,
              height: 48.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: Image.network(
                    valueOrDefault<String>(
                      currentUserPhoto,
                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/buyz-admin-e53d5s/assets/nky1jq0j6fvi/user.png',
                    ),
                  ).image,
                ),
                shape: BoxShape.circle,
                border: Border.all(
                  color: FlutterFlowTheme.of(context).secondaryText,
                  width: 1.0,
                ),
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AuthUserStreamWidget(
                builder: (context) => Text(
                  currentUserDisplayName,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Manrope',
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w500,
                      ),
                ),
              ),
              AuthUserStreamWidget(
                builder: (context) => Text(
                  valueOrDefault(currentUserDocument?.status, ''),
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Noto Sans HK',
                        color: FlutterFlowTheme.of(context).secondaryText,
                        fontSize: 12.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.normal,
                      ),
                ),
              ),
            ].divide(const SizedBox(height: 4.0)),
          ),
          Icon(
            FFIcons.kchevronDown,
            color: FlutterFlowTheme.of(context).primaryText,
            size: 24.0,
          ),
        ].divide(const SizedBox(width: 12.0)),
      ),
    );
  }
}
