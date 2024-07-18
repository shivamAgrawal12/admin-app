import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_shuttles_widget.dart' show RegisterShuttlesWidget;
import 'package:flutter/material.dart';

class RegisterShuttlesModel extends FlutterFlowModel<RegisterShuttlesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  // State field(s) for ip widget.
  FocusNode? ipFocusNode;
  TextEditingController? ipTextController;
  String? Function(BuildContext, String?)? ipTextControllerValidator;
  // State field(s) for row widget.
  FocusNode? rowFocusNode;
  TextEditingController? rowTextController;
  String? Function(BuildContext, String?)? rowTextControllerValidator;
  // State field(s) for rack widget.
  FocusNode? rackFocusNode;
  TextEditingController? rackTextController;
  String? Function(BuildContext, String?)? rackTextControllerValidator;
  // State field(s) for slot widget.
  FocusNode? slotFocusNode;
  TextEditingController? slotTextController;
  String? Function(BuildContext, String?)? slotTextControllerValidator;
  // Stores action output result for [Backend Call - API (add shuttles)] action in Button widget.
  ApiCallResponse? newShuttle;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    idFocusNode?.dispose();
    idTextController?.dispose();

    ipFocusNode?.dispose();
    ipTextController?.dispose();

    rowFocusNode?.dispose();
    rowTextController?.dispose();

    rackFocusNode?.dispose();
    rackTextController?.dispose();

    slotFocusNode?.dispose();
    slotTextController?.dispose();
  }
}
