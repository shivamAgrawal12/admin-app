import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/popup/successfull/successfull_widget.dart';
import '/popup/wrong/wrong_widget.dart';
import 'tray_added_widget.dart' show TrayAddedWidget;
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class TrayAddedModel extends FlutterFlowModel<TrayAddedWidget> {
  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (add new tray)] action in Button widget.
  ApiCallResponse? addNewTray;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
