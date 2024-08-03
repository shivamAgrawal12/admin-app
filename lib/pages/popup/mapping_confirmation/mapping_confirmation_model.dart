import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'mapping_confirmation_widget.dart' show MappingConfirmationWidget;
import 'package:flutter/material.dart';

class MappingConfirmationModel
    extends FlutterFlowModel<MappingConfirmationWidget> {
  ///  Local state fields for this component.

  String? slotid;

  ///  State fields for stateful widgets in this component.

  // Stores action output result for [Backend Call - API (slot detail by friendly name)] action in mapping_confirmation widget.
  ApiCallResponse? apiResultuws;
  // Stores action output result for [Backend Call - API (mapping tray asn shuttle)] action in Button widget.
  ApiCallResponse? trayMapingBtn;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
