import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'nointernet_widget.dart' show NointernetWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class NointernetModel extends FlutterFlowModel<NointernetWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 30000;
  int timerMilliseconds = 30000;
  String timerValue = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    timerController.dispose();
  }
}
