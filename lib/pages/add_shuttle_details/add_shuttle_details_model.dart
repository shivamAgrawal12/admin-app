import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_drop_down.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import '/popup/robot_register/robot_register_widget.dart';
import '/popup/wrong/wrong_widget.dart';
import 'add_shuttle_details_widget.dart' show AddShuttleDetailsWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class AddShuttleDetailsModel extends FlutterFlowModel<AddShuttleDetailsWidget> {
  ///  Local state fields for this page.

  int? rowshow = 0;

  ///  State fields for stateful widgets in this page.

  final formKey2 = GlobalKey<FormState>();
  final formKey1 = GlobalKey<FormState>();
  final formKey3 = GlobalKey<FormState>();
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

  // Stores action output result for [Backend Call - API (add buffer in shutttle)] action in Button widget.
  ApiCallResponse? addBufferShuttle;
  // State field(s) for as_DropDown widget.
  String? asDropDownValue;
  FormFieldController<String>? asDropDownValueController;
  // State field(s) for ash_ss widget.
  FocusNode? ashSsFocusNode;
  TextEditingController? ashSsTextController;
  String? Function(BuildContext, String?)? ashSsTextControllerValidator;
  // State field(s) for ash_sr widget.
  FocusNode? ashSrFocusNode;
  TextEditingController? ashSrTextController;
  String? Function(BuildContext, String?)? ashSrTextControllerValidator;
  // State field(s) for ash_ds widget.
  FocusNode? ashDsFocusNode;
  TextEditingController? ashDsTextController;
  String? Function(BuildContext, String?)? ashDsTextControllerValidator;
  // State field(s) for ash_dr widget.
  FocusNode? ashDrFocusNode;
  TextEditingController? ashDrTextController;
  String? Function(BuildContext, String?)? ashDrTextControllerValidator;
  // State field(s) for asm_ss widget.
  FocusNode? asmSsFocusNode;
  TextEditingController? asmSsTextController;
  String? Function(BuildContext, String?)? asmSsTextControllerValidator;
  // State field(s) for asm_sr widget.
  FocusNode? asmSrFocusNode;
  TextEditingController? asmSrTextController;
  String? Function(BuildContext, String?)? asmSrTextControllerValidator;
  // State field(s) for asm_ds widget.
  FocusNode? asmDsFocusNode;
  TextEditingController? asmDsTextController;
  String? Function(BuildContext, String?)? asmDsTextControllerValidator;
  // State field(s) for asm_dr widget.
  FocusNode? asmDrFocusNode;
  TextEditingController? asmDrTextController;
  String? Function(BuildContext, String?)? asmDrTextControllerValidator;
  // State field(s) for asl_ss widget.
  FocusNode? aslSsFocusNode;
  TextEditingController? aslSsTextController;
  String? Function(BuildContext, String?)? aslSsTextControllerValidator;
  // State field(s) for asl_sr widget.
  FocusNode? aslSrFocusNode;
  TextEditingController? aslSrTextController;
  String? Function(BuildContext, String?)? aslSrTextControllerValidator;
  // State field(s) for asl_ds widget.
  FocusNode? aslDsFocusNode;
  TextEditingController? aslDsTextController;
  String? Function(BuildContext, String?)? aslDsTextControllerValidator;
  // State field(s) for asl_dr widget.
  FocusNode? aslDrFocusNode;
  TextEditingController? aslDrTextController;
  String? Function(BuildContext, String?)? aslDrTextControllerValidator;
  // Stores action output result for [Backend Call - API (add speed in shuttle)] action in Button widget.
  ApiCallResponse? addSpeedShuttle;

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

    ashSsFocusNode?.dispose();
    ashSsTextController?.dispose();

    ashSrFocusNode?.dispose();
    ashSrTextController?.dispose();

    ashDsFocusNode?.dispose();
    ashDsTextController?.dispose();

    ashDrFocusNode?.dispose();
    ashDrTextController?.dispose();

    asmSsFocusNode?.dispose();
    asmSsTextController?.dispose();

    asmSrFocusNode?.dispose();
    asmSrTextController?.dispose();

    asmDsFocusNode?.dispose();
    asmDsTextController?.dispose();

    asmDrFocusNode?.dispose();
    asmDrTextController?.dispose();

    aslSsFocusNode?.dispose();
    aslSsTextController?.dispose();

    aslSrFocusNode?.dispose();
    aslSrTextController?.dispose();

    aslDsFocusNode?.dispose();
    aslDsTextController?.dispose();

    aslDrFocusNode?.dispose();
    aslDrTextController?.dispose();
  }
}
