import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'uplode_csv_widget.dart' show UplodeCsvWidget;
import 'package:flutter/material.dart';

class UplodeCsvModel extends FlutterFlowModel<UplodeCsvWidget> {
  ///  Local state fields for this page.

  int? csvimg = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (uplode slot csv)] action in Button widget.
  ApiCallResponse? slotUplode;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
