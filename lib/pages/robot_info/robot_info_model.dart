import '/flutter_flow/flutter_flow_util.dart';
import 'robot_info_widget.dart' show RobotInfoWidget;
import 'package:flutter/material.dart';

class RobotInfoModel extends FlutterFlowModel<RobotInfoWidget> {
  ///  Local state fields for this page.

  int hide = 0;

  String? stationid;

  List<int> robotrrsddetails = [];
  void addToRobotrrsddetails(int item) => robotrrsddetails.add(item);
  void removeFromRobotrrsddetails(int item) => robotrrsddetails.remove(item);
  void removeAtIndexFromRobotrrsddetails(int index) =>
      robotrrsddetails.removeAt(index);
  void insertAtIndexInRobotrrsddetails(int index, int item) =>
      robotrrsddetails.insert(index, item);
  void updateRobotrrsddetailsAtIndex(int index, Function(int) updateFn) =>
      robotrrsddetails[index] = updateFn(robotrrsddetails[index]);

  List<String> robotactivity = [];
  void addToRobotactivity(String item) => robotactivity.add(item);
  void removeFromRobotactivity(String item) => robotactivity.remove(item);
  void removeAtIndexFromRobotactivity(int index) =>
      robotactivity.removeAt(index);
  void insertAtIndexInRobotactivity(int index, String item) =>
      robotactivity.insert(index, item);
  void updateRobotactivityAtIndex(int index, Function(String) updateFn) =>
      robotactivity[index] = updateFn(robotactivity[index]);

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
