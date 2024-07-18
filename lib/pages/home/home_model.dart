import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/popup/direct_picable/direct_picable_widget.dart';
import '/popup/friendly_name/friendly_name_widget.dart';
import '/popup/menu/menu_widget.dart';
import '/popup/no_record/no_record_widget.dart';
import '/popup/successfull/successfull_widget.dart';
import '/popup/wrong/wrong_widget.dart';
import '/custom_code/widgets/index.dart' as custom_widgets;
import 'home_widget.dart' show HomeWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class HomeModel extends FlutterFlowModel<HomeWidget> {
  ///  Local state fields for this page.

  int? change = 0;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for Switch widget.
  bool? switchValue;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (slot info)] action in Button widget.
  ApiCallResponse? trayCheckBtn;
  // Stores action output result for [Backend Call - API (change slot type)] action in Container widget.
  ApiCallResponse? removePickingStation;
  // Stores action output result for [Backend Call - API (change slot type)] action in Button widget.
  ApiCallResponse? unblockSlot;
  // Stores action output result for [Backend Call - API (change slot type)] action in Button widget.
  ApiCallResponse? blockSlot;
  // Stores action output result for [Backend Call - API (cancel pending task)] action in Container widget.
  ApiCallResponse? cancelTask;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
