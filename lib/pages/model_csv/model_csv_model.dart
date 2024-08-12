import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/popup/msg_mapping/msg_mapping_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'model_csv_widget.dart' show ModelCsvWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
