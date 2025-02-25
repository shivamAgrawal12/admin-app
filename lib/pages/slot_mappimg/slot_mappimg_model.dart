import '/flutter_flow/flutter_flow_util.dart';
import 'slot_mappimg_widget.dart' show SlotMappimgWidget;
import 'package:flutter/material.dart';

class SlotMappimgModel extends FlutterFlowModel<SlotMappimgWidget> {
  ///  Local state fields for this page.

  int? change = 0;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - routhpage] action in slot_mappimg widget.
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
