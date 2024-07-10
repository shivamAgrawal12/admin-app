import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/instant_timer.dart';
import 'slot_mappimg_widget.dart' show SlotMappimgWidget;
import 'package:flutter/material.dart';

class SlotMappimgModel extends FlutterFlowModel<SlotMappimgWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  InstantTimer? instantTimer;
  // Stores action output result for [Backend Call - API (slot info)] action in slot_mappimg widget.
  ApiCallResponse? slotDetail;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    instantTimer?.cancel();
  }
}
