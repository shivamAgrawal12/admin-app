import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tray_info_scan_widget.dart' show TrayInfoScanWidget;
import 'package:flutter/material.dart';

class TrayInfoScanModel extends FlutterFlowModel<TrayInfoScanWidget> {
  ///  Local state fields for this page.

  int? change = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - routhpage] action in tray_info_scan widget.
  String? routh;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (tray info  without type)] action in Button widget.
  ApiCallResponse? trayDetailBtn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
