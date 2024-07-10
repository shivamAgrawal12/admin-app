import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'tray_info_scan_widget.dart' show TrayInfoScanWidget;
import 'package:flutter/material.dart';

class TrayInfoScanModel extends FlutterFlowModel<TrayInfoScanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (tray info)] action in tray_info_scan widget.
  ApiCallResponse? trayDetail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
