import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'empty_result_model.dart';
export 'empty_result_model.dart';

class EmptyResultWidget extends StatefulWidget {
  const EmptyResultWidget({super.key});

  @override
  State<EmptyResultWidget> createState() => _EmptyResultWidgetState();
}

class _EmptyResultWidgetState extends State<EmptyResultWidget> {
  late EmptyResultModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => EmptyResultModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8.0),
      child: Image.asset(
        'assets/images/empty-result.png',
        width: 300.0,
        height: 200.0,
        fit: BoxFit.contain,
      ),
    );
  }
}
