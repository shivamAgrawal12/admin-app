import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/popup/msg_mapping/msg_mapping_widget.dart';
import '/popup/successfull/successfull_widget.dart';
import 'tray_delete_widget.dart' show TrayDeleteWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

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
