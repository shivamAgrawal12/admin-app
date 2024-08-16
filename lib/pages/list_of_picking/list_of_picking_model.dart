import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'list_of_picking_widget.dart' show ListOfPickingWidget;
import 'package:flutter/material.dart';

class ListOfPickingModel extends FlutterFlowModel<ListOfPickingWidget> {
  ///  Local state fields for this page.

  List<dynamic> pickingstation = [];
  void addToPickingstation(dynamic item) => pickingstation.add(item);
  void removeFromPickingstation(dynamic item) => pickingstation.remove(item);
  void removeAtIndexFromPickingstation(int index) =>
      pickingstation.removeAt(index);
  void insertAtIndexInPickingstation(int index, dynamic item) =>
      pickingstation.insert(index, item);
  void updatePickingstationAtIndex(int index, Function(dynamic) updateFn) =>
      pickingstation[index] = updateFn(pickingstation[index]);

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - API (list of slot)] action in list_of_picking widget.
  ApiCallResponse? apiResult3tj;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
