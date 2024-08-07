import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'register_robot_widget.dart' show RegisterRobotWidget;
import 'package:flutter/material.dart';

class RegisterRobotModel extends FlutterFlowModel<RegisterRobotWidget> {
  ///  State fields for stateful widgets in this page.

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
  FocusNode? depthFocusNode1;
  TextEditingController? depthTextController1;
  String? Function(BuildContext, String?)? depthTextController1Validator;
  String? _depthTextController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for depth widget.
  FocusNode? depthFocusNode2;
  TextEditingController? depthTextController2;
  String? Function(BuildContext, String?)? depthTextController2Validator;
  // Stores action output result for [Validate Form] action in Button widget.
  bool? formvalidate;
  // Stores action output result for [Backend Call - API (register new robot)] action in Button widget.
  ApiCallResponse? newRobot;

  @override
  void initState(BuildContext context) {
    nameTextControllerValidator = _nameTextControllerValidator;
    idTextControllerValidator = _idTextControllerValidator;
    rowTextControllerValidator = _rowTextControllerValidator;
    rackTextControllerValidator = _rackTextControllerValidator;
    slotTextControllerValidator = _slotTextControllerValidator;
    depthTextController1Validator = _depthTextController1Validator;
  }

  @override
  void dispose() {
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

    depthFocusNode1?.dispose();
    depthTextController1?.dispose();

    depthFocusNode2?.dispose();
    depthTextController2?.dispose();
  }
}
