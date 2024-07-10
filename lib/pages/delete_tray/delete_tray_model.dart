import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'delete_tray_widget.dart' show DeleteTrayWidget;
import 'package:flutter/material.dart';

class DeleteTrayModel extends FlutterFlowModel<DeleteTrayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (tray info)] action in delete_tray widget.
  ApiCallResponse? trayDelete;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
