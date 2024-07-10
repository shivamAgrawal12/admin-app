import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'tray_remove_widget.dart' show TrayRemoveWidget;
import 'package:flutter/material.dart';

class TrayRemoveModel extends FlutterFlowModel<TrayRemoveWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (tray info)] action in tray_remove widget.
  ApiCallResponse? trayDetails;
  // Stores action output result for [Backend Call - API (slot info by tray id)] action in tray_remove widget.
  ApiCallResponse? slotIdByTray;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
