import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'tray_release_widget.dart' show TrayReleaseWidget;
import 'package:flutter/material.dart';

class TrayReleaseModel extends FlutterFlowModel<TrayReleaseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tray_id_value widget.
  FocusNode? trayIdValueFocusNode;
  TextEditingController? trayIdValueTextController;
  String? Function(BuildContext, String?)? trayIdValueTextControllerValidator;
  // State field(s) for direct_pickable widget.
  String? directPickableValue;
  FormFieldController<String>? directPickableValueController;
  // Stores action output result for [Backend Call - API (post task)] action in Button widget.
  ApiCallResponse? taskPost;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    trayIdValueFocusNode?.dispose();
    trayIdValueTextController?.dispose();
  }
}
