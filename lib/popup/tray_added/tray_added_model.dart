import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tray_added_widget.dart' show TrayAddedWidget;
import 'package:flutter/material.dart';

class TrayAddedModel extends FlutterFlowModel<TrayAddedWidget> {
  ///  State fields for stateful widgets in this component.

  final formKey = GlobalKey<FormState>();
  // State field(s) for trayheight widget.
  String? trayheightValue;
  FormFieldController<String>? trayheightValueController;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // Stores action output result for [Backend Call - API (add new tray)] action in Button widget.
  ApiCallResponse? addNewTray;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
