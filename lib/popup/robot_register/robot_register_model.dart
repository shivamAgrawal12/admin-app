import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'robot_register_widget.dart' show RobotRegisterWidget;
import 'package:flutter/material.dart';

class RobotRegisterModel extends FlutterFlowModel<RobotRegisterWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Timer widget.
  final timerInitialTimeMs = 2000;
  int timerMilliseconds = 2000;
  String timerValue = StopWatchTimer.getDisplayTime(
    2000,
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