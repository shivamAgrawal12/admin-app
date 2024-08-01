import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/material.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  int? change = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - routhpage] action in home widget.
  String? routh;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (slot info)] action in Button widget.
  ApiCallResponse? trayCheckBtn;
  // Stores action output result for [Backend Call - API (change slot type without friendly name)] action in Container widget.
  ApiCallResponse? removePickingStation;
  // Stores action output result for [Backend Call - API (change slot type)] action in Button widget.
  ApiCallResponse? unblockSlot;
  // Stores action output result for [Backend Call - API (change slot type)] action in Button widget.
  ApiCallResponse? blockSlot;
  // Stores action output result for [Backend Call - API (cancel all pending)] action in Container widget.
  ApiCallResponse? cancelTask;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
