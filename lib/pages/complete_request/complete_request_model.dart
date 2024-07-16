import '/flutter_flow/flutter_flow_util.dart';
import 'complete_request_widget.dart' show CompleteRequestWidget;
import 'package:flutter/material.dart';

class CompleteRequestModel extends FlutterFlowModel<CompleteRequestWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
