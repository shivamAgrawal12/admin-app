import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/popup/menu/menu_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'robot_info_widget.dart' show RobotInfoWidget;
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class RobotInfoModel extends FlutterFlowModel<RobotInfoWidget> {
  ///  Local state fields for this page.

  int hide = 0;

  String? stationid;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Custom Action - routhpage] action in robot_info widget.
  String? routh;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
