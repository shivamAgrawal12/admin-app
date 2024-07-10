import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'robot_scan1_widget.dart' show RobotScan1Widget;
import 'package:flutter/material.dart';

class RobotScan1Model extends FlutterFlowModel<RobotScan1Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (verify robot id)] action in robot_scan_1 widget.
  ApiCallResponse? robotDetail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
