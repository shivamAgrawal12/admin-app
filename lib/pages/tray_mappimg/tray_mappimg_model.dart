import '/flutter_flow/flutter_flow_util.dart';
import 'tray_mappimg_widget.dart' show TrayMappimgWidget;
import 'package:flutter/material.dart';

class TrayMappimgModel extends FlutterFlowModel<TrayMappimgWidget> {
  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - routhpage] action in tray_mappimg widget.
  String? routh;
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
