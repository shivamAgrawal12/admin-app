import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tray_remove_widget.dart' show TrayRemoveWidget;
import 'package:flutter/material.dart';

class TrayRemoveModel extends FlutterFlowModel<TrayRemoveWidget> {
  ///  Local state fields for this page.

  int? change = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - routhpage] action in tray_remove widget.
  String? routh;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (tray info)] action in Button widget.
  ApiCallResponse? trayDetailsBtn;
  // Stores action output result for [Backend Call - API (slot info by tray id)] action in Button widget.
  ApiCallResponse? slotIdByTrayBtn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
