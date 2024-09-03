import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'model_csv_widget.dart' show ModelCsvWidget;
import 'package:flutter/material.dart';

class ModelCsvModel extends FlutterFlowModel<ModelCsvWidget> {
  ///  Local state fields for this page.

  int? csvimg = 0;

  List<String> listofvalue = [
    'robot_id',
    'row',
    'rack',
    'slot',
    'depth',
    'type',
    'direct_pickable',
    'tray_id',
    'support_type',
    'tags'
  ];
  void addToListofvalue(String item) => listofvalue.add(item);
  void removeFromListofvalue(String item) => listofvalue.remove(item);
  void removeAtIndexFromListofvalue(int index) => listofvalue.removeAt(index);
  void insertAtIndexInListofvalue(int index, String item) =>
      listofvalue.insert(index, item);
  void updateListofvalueAtIndex(int index, Function(String) updateFn) =>
      listofvalue[index] = updateFn(listofvalue[index]);

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (list of slot)] action in Container widget.
  ApiCallResponse? apiResult9bv;
  bool isDataUploading = false;
  FFUploadedFile uploadedLocalFile =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
