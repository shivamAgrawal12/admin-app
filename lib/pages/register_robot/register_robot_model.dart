import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_robot_widget.dart' show RegisterRobotWidget;
import 'package:flutter/material.dart';

class RegisterRobotModel extends FlutterFlowModel<RegisterRobotWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for name widget.
  FocusNode? nameFocusNode;
  TextEditingController? nameTextController;
  String? Function(BuildContext, String?)? nameTextControllerValidator;
  String? _nameTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

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

  // State field(s) for depth widget.
  FocusNode? depthFocusNode;
  TextEditingController? depthTextController;
  String? Function(BuildContext, String?)? depthTextControllerValidator;
  String? _depthTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // Stores action output result for [Backend Call - API (register new robot)] action in Button widget.
  ApiCallResponse? newRobot;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    idTextControllerValidator = _idTextControllerValidator;
    rowTextControllerValidator = _rowTextControllerValidator;
    rackTextControllerValidator = _rackTextControllerValidator;
    slotTextControllerValidator = _slotTextControllerValidator;
    depthTextControllerValidator = _depthTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    nameFocusNode?.dispose();
    nameTextController?.dispose();

    idFocusNode?.dispose();
    idTextController?.dispose();

    rowFocusNode?.dispose();
    rowTextController?.dispose();

    rackFocusNode?.dispose();
    rackTextController?.dispose();

    slotFocusNode?.dispose();
    slotTextController?.dispose();

    depthFocusNode?.dispose();
    depthTextController?.dispose();
  }
}
