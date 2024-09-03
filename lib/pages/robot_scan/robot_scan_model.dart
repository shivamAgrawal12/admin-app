import '/flutter_flow/flutter_flow_util.dart';
import 'robot_scan_widget.dart' show RobotScanWidget;
import 'package:flutter/material.dart';

class RobotScanModel extends FlutterFlowModel<RobotScanWidget> {
  ///  Local state fields for this page.

  int? change = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - routhpage] action in robot_scan widget.
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
