import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tray_delete_widget.dart' show TrayDeleteWidget;
import 'package:flutter/material.dart';

class TrayDeleteModel extends FlutterFlowModel<TrayDeleteWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (tray info)] action in tray-delete widget.
  ApiCallResponse? deleteTray;
  // Stores action output result for [Backend Call - API (delete tray)] action in Button widget.
  ApiCallResponse? addNewTray;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
