import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'add_new_tray_widget.dart' show AddNewTrayWidget;
import 'package:flutter/material.dart';

class AddNewTrayModel extends FlutterFlowModel<AddNewTrayWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (tray info)] action in add_new_tray widget.
  ApiCallResponse? trayCheck;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
