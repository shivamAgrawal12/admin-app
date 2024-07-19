import '/flutter_flow/flutter_flow_util.dart';
import 'uplod_csv_spot_widget.dart' show UplodCsvSpotWidget;
import 'package:flutter/material.dart';

class UplodCsvSpotModel extends FlutterFlowModel<UplodCsvSpotWidget> {
  ///  State fields for stateful widgets in this component.

  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
