import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_timer.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'login_page_widget.dart' show LoginPageWidget;
import 'package:stop_watch_timer/stop_watch_timer.dart';
import 'package:flutter/material.dart';

class LoginPageModel extends FlutterFlowModel<LoginPageWidget> {
  ///  Local state fields for this page.

  int logincondition = 2;

  String? num;

  ///  State fields for stateful widgets in this page.

  // State field(s) for apiurl widget.
  FocusNode? apiurlFocusNode;
  TextEditingController? apiurlTextController;
  String? Function(BuildContext, String?)? apiurlTextControllerValidator;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController2;
  String? Function(BuildContext, String?)? textController2Validator;
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
  // Stores action output result for [Backend Call - API (verify robot id)] action in TextField_otp widget.
  ApiCallResponse? robotDetailBtn2;
  // Stores action output result for [Backend Call - API (validate otp)] action in Button widget.
  ApiCallResponse? validateOtp;
  // Stores action output result for [Backend Call - API (verify robot id)] action in Button widget.
  ApiCallResponse? robotDetailBtn;
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
    apiurlFocusNode?.dispose();
    apiurlTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController2?.dispose();

    textFieldOtpFocusNode?.dispose();
    textFieldOtpTextController?.dispose();

    timerController.dispose();
  }
}
