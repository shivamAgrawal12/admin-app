import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'register_shuttles_widget.dart' show RegisterShuttlesWidget;
import 'package:flutter/material.dart';

class RegisterShuttlesModel extends FlutterFlowModel<RegisterShuttlesWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for id widget.
  FocusNode? idFocusNode;
  TextEditingController? idTextController;
  String? Function(BuildContext, String?)? idTextControllerValidator;
  String? _idTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for ip widget.
  FocusNode? ipFocusNode;
  TextEditingController? ipTextController;
  String? Function(BuildContext, String?)? ipTextControllerValidator;
  String? _ipTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for row widget.
  FocusNode? rowFocusNode;
  TextEditingController? rowTextController;
  String? Function(BuildContext, String?)? rowTextControllerValidator;
  String? _rowTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for rack widget.
  FocusNode? rackFocusNode;
  TextEditingController? rackTextController;
  String? Function(BuildContext, String?)? rackTextControllerValidator;
  String? _rackTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for slot widget.
  FocusNode? slotFocusNode;
  TextEditingController? slotTextController;
  String? Function(BuildContext, String?)? slotTextControllerValidator;
  String? _slotTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (add shuttles)] action in Button widget.
  ApiCallResponse? newShuttle;

  @override
  void initState(BuildContext context) {
    idTextControllerValidator = _idTextControllerValidator;
    ipTextControllerValidator = _ipTextControllerValidator;
    rowTextControllerValidator = _rowTextControllerValidator;
    rackTextControllerValidator = _rackTextControllerValidator;
    slotTextControllerValidator = _slotTextControllerValidator;
  }

  @override
  void dispose() {
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
