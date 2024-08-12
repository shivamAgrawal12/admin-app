import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'nointernet_model.dart';
export 'nointernet_model.dart';

class NointernetWidget extends StatefulWidget {
  const NointernetWidget({super.key});

  @override
  State<NointernetWidget> createState() => _NointernetWidgetState();
}

class _NointernetWidgetState extends State<NointernetWidget> {
  late NointernetModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => NointernetModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.timerController.onStartTimer();
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: Container(
        width: 320.0,
        height: 420.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).primaryBackground,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/NOINTERNET_(1).gif',
                  width: 300.0,
                  height: 300.0,
                  fit: BoxFit.cover,
                ),
              ),
              FlutterFlowTimer(
                initialTime: _model.timerInitialTimeMs,
                getDisplayTime: (value) => StopWatchTimer.getDisplayTime(
                  value,
                  hours: false,
                  milliSecond: false,
                ),
                controller: _model.timerController,
                updateStateInterval: const Duration(milliseconds: 1000),
                onChanged: (value, displayTime, shouldUpdate) {
                  _model.timerMilliseconds = value;
                  _model.timerValue = displayTime;
                  if (shouldUpdate) setState(() {});
                },
                onEnded: () async {
                  _model.timerController.onStopTimer();
                  Navigator.pop(context);
                },
                textAlign: TextAlign.start,
                style: FlutterFlowTheme.of(context).headlineSmall.override(
                      fontFamily: 'Open Sans',
                      fontSize: 1.0,
                      letterSpacing: 0.0,
                    ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  Navigator.pop(context);
                },
                text: 'Close',
                options: FFButtonOptions(
                  height: 40.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: FlutterFlowTheme.of(context).liteText,
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Open Sans',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ].divide(const SizedBox(height: 20.0)),
          ),
        ),
      ),
    );
  }
}
