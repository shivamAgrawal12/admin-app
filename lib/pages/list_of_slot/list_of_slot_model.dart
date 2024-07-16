import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_slot_widget.dart' show ListOfSlotWidget;
import 'package:flutter/material.dart';

class ListOfSlotModel extends FlutterFlowModel<ListOfSlotWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
