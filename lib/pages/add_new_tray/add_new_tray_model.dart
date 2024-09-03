import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'add_new_tray_widget.dart' show AddNewTrayWidget;
import 'package:flutter/material.dart';

class AddNewTrayModel extends FlutterFlowModel<AddNewTrayWidget> {
  ///  Local state fields for this page.

  int? change = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - routhpage] action in add_new_tray widget.
  String? routh;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (tray info  without type)] action in Button widget.
  ApiCallResponse? trayCheckBtn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
