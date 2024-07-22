import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'add_shuttle_details_widget.dart' show AddShuttleDetailsWidget;
import 'package:flutter/material.dart';

class AddShuttleDetailsModel extends FlutterFlowModel<AddShuttleDetailsWidget> {
  ///  Local state fields for this page.

  int? rowshow = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  // State field(s) for speed widget.
  String? speedValue;
  FormFieldController<String>? speedValueController;
  // Stores action output result for [Backend Call - API (speed in shuttle)] action in Button widget.
  ApiCallResponse? shuttleSpeed;
  // State field(s) for buff_tray widget.
  String? buffTrayValue;
  FormFieldController<String>? buffTrayValueController;
  // State field(s) for abh_ss widget.
  FocusNode? abhSsFocusNode;
  TextEditingController? abhSsTextController;
  String? Function(BuildContext, String?)? abhSsTextControllerValidator;
  String? _abhSsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abh_sr widget.
  FocusNode? abhSrFocusNode;
  TextEditingController? abhSrTextController;
  String? Function(BuildContext, String?)? abhSrTextControllerValidator;
  String? _abhSrTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abh_ds widget.
  FocusNode? abhDsFocusNode;
  TextEditingController? abhDsTextController;
  String? Function(BuildContext, String?)? abhDsTextControllerValidator;
  String? _abhDsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abh_dr widget.
  FocusNode? abhDrFocusNode;
  TextEditingController? abhDrTextController;
  String? Function(BuildContext, String?)? abhDrTextControllerValidator;
  String? _abhDrTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abm_ss widget.
  FocusNode? abmSsFocusNode;
  TextEditingController? abmSsTextController;
  String? Function(BuildContext, String?)? abmSsTextControllerValidator;
  String? _abmSsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abm_sr widget.
  FocusNode? abmSrFocusNode;
  TextEditingController? abmSrTextController;
  String? Function(BuildContext, String?)? abmSrTextControllerValidator;
  String? _abmSrTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abm_ds widget.
  FocusNode? abmDsFocusNode;
  TextEditingController? abmDsTextController;
  String? Function(BuildContext, String?)? abmDsTextControllerValidator;
  String? _abmDsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abm_dr widget.
  FocusNode? abmDrFocusNode;
  TextEditingController? abmDrTextController;
  String? Function(BuildContext, String?)? abmDrTextControllerValidator;
  String? _abmDrTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abl_ss widget.
  FocusNode? ablSsFocusNode;
  TextEditingController? ablSsTextController;
  String? Function(BuildContext, String?)? ablSsTextControllerValidator;
  String? _ablSsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abl_sr widget.
  FocusNode? ablSrFocusNode;
  TextEditingController? ablSrTextController;
  String? Function(BuildContext, String?)? ablSrTextControllerValidator;
  String? _ablSrTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abl_ds widget.
  FocusNode? ablDsFocusNode;
  TextEditingController? ablDsTextController;
  String? Function(BuildContext, String?)? ablDsTextControllerValidator;
  String? _ablDsTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for abl_dr widget.
  FocusNode? ablDrFocusNode;
  TextEditingController? ablDrTextController;
  String? Function(BuildContext, String?)? ablDrTextControllerValidator;
  String? _ablDrTextControllerValidator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    return null;
  }

  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController13;
  String? Function(BuildContext, String?)? textController13Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController14;
  String? Function(BuildContext, String?)? textController14Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode3;
  TextEditingController? textController15;
  String? Function(BuildContext, String?)? textController15Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode4;
  TextEditingController? textController16;
  String? Function(BuildContext, String?)? textController16Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode5;
  TextEditingController? textController17;
  String? Function(BuildContext, String?)? textController17Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode6;
  TextEditingController? textController18;
  String? Function(BuildContext, String?)? textController18Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode7;
  TextEditingController? textController19;
  String? Function(BuildContext, String?)? textController19Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode8;
  TextEditingController? textController20;
  String? Function(BuildContext, String?)? textController20Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode9;
  TextEditingController? textController21;
  String? Function(BuildContext, String?)? textController21Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode10;
  TextEditingController? textController22;
  String? Function(BuildContext, String?)? textController22Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode11;
  TextEditingController? textController23;
  String? Function(BuildContext, String?)? textController23Validator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode12;
  TextEditingController? textController24;
  String? Function(BuildContext, String?)? textController24Validator;

  @override
  void initState(BuildContext context) {
    abhSsTextControllerValidator = _abhSsTextControllerValidator;
    abhSrTextControllerValidator = _abhSrTextControllerValidator;
    abhDsTextControllerValidator = _abhDsTextControllerValidator;
    abhDrTextControllerValidator = _abhDrTextControllerValidator;
    abmSsTextControllerValidator = _abmSsTextControllerValidator;
    abmSrTextControllerValidator = _abmSrTextControllerValidator;
    abmDsTextControllerValidator = _abmDsTextControllerValidator;
    abmDrTextControllerValidator = _abmDrTextControllerValidator;
    ablSsTextControllerValidator = _ablSsTextControllerValidator;
    ablSrTextControllerValidator = _ablSrTextControllerValidator;
    ablDsTextControllerValidator = _ablDsTextControllerValidator;
    ablDrTextControllerValidator = _ablDrTextControllerValidator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    abhSsFocusNode?.dispose();
    abhSsTextController?.dispose();

    abhSrFocusNode?.dispose();
    abhSrTextController?.dispose();

    abhDsFocusNode?.dispose();
    abhDsTextController?.dispose();

    abhDrFocusNode?.dispose();
    abhDrTextController?.dispose();

    abmSsFocusNode?.dispose();
    abmSsTextController?.dispose();

    abmSrFocusNode?.dispose();
    abmSrTextController?.dispose();

    abmDsFocusNode?.dispose();
    abmDsTextController?.dispose();

    abmDrFocusNode?.dispose();
    abmDrTextController?.dispose();

    ablSsFocusNode?.dispose();
    ablSsTextController?.dispose();

    ablSrFocusNode?.dispose();
    ablSrTextController?.dispose();

    ablDsFocusNode?.dispose();
    ablDsTextController?.dispose();

    ablDrFocusNode?.dispose();
    ablDrTextController?.dispose();

    textFieldFocusNode1?.dispose();
    textController13?.dispose();

    textFieldFocusNode2?.dispose();
    textController14?.dispose();

    textFieldFocusNode3?.dispose();
    textController15?.dispose();

    textFieldFocusNode4?.dispose();
    textController16?.dispose();

    textFieldFocusNode5?.dispose();
    textController17?.dispose();

    textFieldFocusNode6?.dispose();
    textController18?.dispose();

    textFieldFocusNode7?.dispose();
    textController19?.dispose();

    textFieldFocusNode8?.dispose();
    textController20?.dispose();

    textFieldFocusNode9?.dispose();
    textController21?.dispose();

    textFieldFocusNode10?.dispose();
    textController22?.dispose();

    textFieldFocusNode11?.dispose();
    textController23?.dispose();

    textFieldFocusNode12?.dispose();
    textController24?.dispose();
  }
}
