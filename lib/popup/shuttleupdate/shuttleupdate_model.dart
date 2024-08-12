import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/popup/msg_mapping/msg_mapping_widget.dart';
import '/popup/successfull/successfull_widget.dart';
import 'shuttleupdate_widget.dart' show ShuttleupdateWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ShuttleupdateModel extends FlutterFlowModel<ShuttleupdateWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for speed widget.
  String? speedValue;
  FormFieldController<String>? speedValueController;
  // Stores action output result for [Backend Call - API (speed in shuttle)] action in Button widget.
  ApiCallResponse? shuttleSpeed;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
