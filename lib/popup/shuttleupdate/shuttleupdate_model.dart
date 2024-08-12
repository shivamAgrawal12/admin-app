import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'shuttleupdate_widget.dart' show ShuttleupdateWidget;
import 'package:flutter/material.dart';

class ShuttleupdateModel extends FlutterFlowModel<ShuttleupdateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for speed widget.
  String? speedValue;
  FormFieldController<String>? speedValueController;
  // Stores action output result for [Backend Call - API (speed in shuttle)] action in Button widget.
  ApiCallResponse? shuttleSpeed;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
