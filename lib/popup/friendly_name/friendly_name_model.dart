import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'friendly_name_widget.dart' show FriendlyNameWidget;
import 'package:flutter/material.dart';

class FriendlyNameModel extends FlutterFlowModel<FriendlyNameWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (tray info)] action in friendly_name widget.
  ApiCallResponse? deleteTray;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (pickingstation patch call)] action in Button widget.
  ApiCallResponse? addPickingStation;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
