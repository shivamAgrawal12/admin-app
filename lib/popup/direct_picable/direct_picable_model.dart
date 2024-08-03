import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'direct_picable_widget.dart' show DirectPicableWidget;
import 'package:flutter/material.dart';

class DirectPicableModel extends FlutterFlowModel<DirectPicableWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (direct pickable)] action in Button widget.
  ApiCallResponse? directPickableSlot;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
