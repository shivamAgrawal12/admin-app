import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'no_recordforlist_model.dart';
export 'no_recordforlist_model.dart';

class NoRecordforlistWidget extends StatefulWidget {
  const NoRecordforlistWidget({super.key});

  @override
  State<NoRecordforlistWidget> createState() => _NoRecordforlistWidgetState();
}

class _NoRecordforlistWidgetState extends State<NoRecordforlistWidget> {
  late NoRecordforlistModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NoRecordforlistModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0, -0.6),
      child: Container(
        width: 320,
        height: 350,
        decoration: BoxDecoration(
          color: const Color(0x00FFFFFF),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Image.asset(
                  'assets/images/NORECORDS.png',
                  width: 300,
                  height: 300,
                  fit: BoxFit.cover,
                ),
              ),
            ].divide(const SizedBox(height: 20)),
          ),
        ),
      ),
    );
  }
}
