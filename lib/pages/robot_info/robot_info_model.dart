import '/flutter_flow/flutter_flow_util.dart';
import 'robot_info_widget.dart' show RobotInfoWidget;
import 'package:flutter/material.dart';

class RobotInfoModel extends FlutterFlowModel<RobotInfoWidget> {
  ///  Local state fields for this page.

  int hide = 0;

  String? stationid;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}