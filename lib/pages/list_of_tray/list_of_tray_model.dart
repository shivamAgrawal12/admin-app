import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_tray_widget.dart' show ListOfTrayWidget;
import 'package:flutter/material.dart';

class ListOfTrayModel extends FlutterFlowModel<ListOfTrayWidget> {
  ///  Local state fields for this page.

  int? metalcount;

  int? stealcount;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (list of tray)] action in list_of_tray widget.
  ApiCallResponse? apiResultvaq;
  // Stores action output result for [Backend Call - API (list of tray)] action in list_of_tray widget.
  ApiCallResponse? apiResultv22;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();

    tabBarController?.dispose();
  }
}
