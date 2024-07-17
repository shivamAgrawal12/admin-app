import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'robot_scan_widget.dart' show RobotScanWidget;
import 'package:flutter/material.dart';

class RobotScanModel extends FlutterFlowModel<RobotScanWidget> {
  ///  Local state fields for this page.

  int? change = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (verify robot id)] action in Button widget.
  ApiCallResponse? robotDetailBtn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
