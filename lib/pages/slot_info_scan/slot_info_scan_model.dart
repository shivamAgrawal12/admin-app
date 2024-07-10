import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'slot_info_scan_widget.dart' show SlotInfoScanWidget;
import 'package:flutter/material.dart';

class SlotInfoScanModel extends FlutterFlowModel<SlotInfoScanWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (slot info)] action in slot_info_scan widget.
  ApiCallResponse? slotDetail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
