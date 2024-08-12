import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/popup/msg_mapping/msg_mapping_widget.dart';
import '/popup/successfull/successfull_widget.dart';
import 'mapping_confirmation_widget.dart' show MappingConfirmationWidget;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class MappingConfirmationModel
    extends FlutterFlowModel<MappingConfirmationWidget> {
  ///  Local state fields for this component.

  String? slotid;

  String? slottype;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (slot detail by friendly name)] action in mapping_confirmation widget.
  ApiCallResponse? apiResultuws;
  // Stores action output result for [Backend Call - API (mapping tray asn shuttle)] action in Button widget.
  ApiCallResponse? trayMapingBtn;
  // Stores action output result for [Backend Call - API (post task)] action in Button widget.
  ApiCallResponse? taskPost1;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
