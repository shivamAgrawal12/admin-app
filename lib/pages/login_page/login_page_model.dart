import '/auth/custom_auth/auth_util.dart';
import '/backend/api_requests/api_calls.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/popup/invalid_otp/invalid_otp_widget.dart';
import '/popup/resend_otp/resend_otp_widget.dart';
import '/popup/wrong_num/wrong_num_widget.dart';
import 'dart:math';
import '/flutter_flow/custom_functions.dart' as functions;
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter/services.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  int logincondition = 0;

  String? num;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController1;
  String? Function(BuildContext, String?)? textController1Validator;
  // Stores action output result for [Backend Call - API (generate otp)] action in TextField widget.
  ApiCallResponse? generateC;
  // Stores action output result for [Backend Call - API (generate otp)] action in Button widget.
  ApiCallResponse? generate;
  // State field(s) for TextField_otp widget.
  FocusNode? textFieldOtpFocusNode;
  TextEditingController? textFieldOtpTextController;
  String? Function(BuildContext, String?)? textFieldOtpTextControllerValidator;
  // Stores action output result for [Backend Call - API (validate otp)] action in TextField_otp widget.
  ApiCallResponse? validateOtpC;
  // Stores action output result for [Backend Call - API (validate otp)] action in Button widget.
  ApiCallResponse? validateOtp;
  // Stores action output result for [Backend Call - API (generate otp)] action in Text widget.
  ApiCallResponse? resendOtp;
  // State field(s) for Timer widget.
  final timerInitialTimeMs = 30000;
  int timerMilliseconds = 30000;
  String timerValue = StopWatchTimer.getDisplayTime(
    30000,
    hours: false,
    milliSecond: false,
  );
  FlutterFlowTimerController timerController =
      FlutterFlowTimerController(StopWatchTimer(mode: StopWatchMode.countDown));

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    textFieldFocusNode?.dispose();
    textController1?.dispose();

    textFieldOtpFocusNode?.dispose();
    textFieldOtpTextController?.dispose();

    timerController.dispose();
  }
}
