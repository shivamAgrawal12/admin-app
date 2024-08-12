import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'matrix_csv_widget.dart' show MatrixCsvWidget;
import 'package:flutter/material.dart';

class MatrixCsvModel extends FlutterFlowModel<MatrixCsvWidget> {
  ///  Local state fields for this page.

  int? csvimg = 0;

  ///  State fields for stateful widgets in this page.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (list of slot)] action in Button widget.
  ApiCallResponse? apiResult9bv;
  // Stores action output result for [Backend Call - API (uplode slot csv)] action in Button widget.
  ApiCallResponse? slotUplode;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
