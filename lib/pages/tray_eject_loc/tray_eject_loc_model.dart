import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'tray_eject_loc_widget.dart' show TrayEjectLocWidget;
import 'package:flutter/material.dart';

class TrayEjectLocModel extends FlutterFlowModel<TrayEjectLocWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (task details)] action in tray_eject_loc widget.
  ApiCallResponse? taskInfo;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
