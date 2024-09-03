import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'tray_csv_widget.dart' show TrayCsvWidget;
import 'package:flutter/material.dart';

class TrayCsvModel extends FlutterFlowModel<TrayCsvWidget> {
  ///  Local state fields for this page.

  int? csvimg = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (list of tray without type)] action in Button widget.
  ApiCallResponse? apiResult9bv;
  // Stores action output result for [Backend Call - API (uplode tray csv)] action in Button widget.
  ApiCallResponse? trayUplode;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
