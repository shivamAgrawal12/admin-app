import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:async';
import 'list_of_slot_widget.dart' show ListOfSlotWidget;
import 'package:flutter/material.dart';

class ListOfSlotModel extends FlutterFlowModel<ListOfSlotWidget> {
  ///  Local state fields for this page.

  List<dynamic> listsearchvalue = [];
  void addToListsearchvalue(dynamic item) => listsearchvalue.add(item);
  void removeFromListsearchvalue(dynamic item) => listsearchvalue.remove(item);
  void removeAtIndexFromListsearchvalue(int index) =>
      listsearchvalue.removeAt(index);
  void insertAtIndexInListsearchvalue(int index, dynamic item) =>
      listsearchvalue.insert(index, item);
  void updateListsearchvalueAtIndex(int index, Function(dynamic) updateFn) =>
      listsearchvalue[index] = updateFn(listsearchvalue[index]);

  bool sorthinghide = false;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - API (list of slot)] action in list_of_slot widget.
  ApiCallResponse? listofslotresult;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  Completer<ApiCallResponse>? apiRequestCompleter;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }

  /// Additional helper methods.
  Future waitForApiRequestCompleted({
    double minWait = 0,
    double maxWait = double.infinity,
  }) async {
    final stopwatch = Stopwatch()..start();
    while (true) {
      await Future.delayed(const Duration(milliseconds: 50));
      final timeElapsed = stopwatch.elapsedMilliseconds;
      final requestComplete = apiRequestCompleter?.isCompleted ?? false;
      if (timeElapsed > maxWait || (requestComplete && timeElapsed > minWait)) {
        break;
      }
    }
  }
}
