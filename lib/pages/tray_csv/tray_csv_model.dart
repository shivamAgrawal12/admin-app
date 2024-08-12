import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import '/popup/msg_mapping/msg_mapping_widget.dart';
import '/popup/robot_register/robot_register_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'tray_csv_widget.dart' show TrayCsvWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TrayCsvModel extends FlutterFlowModel<TrayCsvWidget> {
  ///  Local state fields for this page.

  int? csvimg = 0;

  ///  State fields for stateful widgets in this page.

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
