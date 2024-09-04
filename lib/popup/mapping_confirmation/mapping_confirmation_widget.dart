import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/popup/msg_mapping/msg_mapping_widget.dart';
import '/popup/successfull/successfull_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:provider/provider.dart';
import 'mapping_confirmation_model.dart';
export 'mapping_confirmation_model.dart';

class MappingConfirmationWidget extends StatefulWidget {
  const MappingConfirmationWidget({super.key});

  @override
  State<MappingConfirmationWidget> createState() =>
      _MappingConfirmationWidgetState();
}

class _MappingConfirmationWidgetState extends State<MappingConfirmationWidget> {
  late MappingConfirmationModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MappingConfirmationModel());

    // On component load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      FFAppState().trayqrscan = 0;
      FFAppState().update(() {});
      _model.apiResultuws =
          await AdminApiGroup.slotDetailByFriendlyNameCall.call(
        slotFriendlyName: FFAppState().slotid,
        robotId: FFAppState().robotid,
      );

      if ((_model.apiResultuws?.succeeded ?? true)) {
        _model.slotid = AdminApiGroup.slotDetailByFriendlyNameCall.slotid(
          (_model.apiResultuws?.jsonBody ?? ''),
        );
        _model.slottype = AdminApiGroup.slotDetailByFriendlyNameCall.slottype(
          (_model.apiResultuws?.jsonBody ?? ''),
        );
        safeSetState(() {});
      }
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0, -0.6),
      child: Container(
        width: 290,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).liteBg,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              width: 290,
              height: 200,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 25,
                    color: Color(0x338E7CC3),
                    offset: Offset(
                      0,
                      5,
                    ),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25),
                  bottomRight: Radius.circular(25),
                  topLeft: Radius.circular(10),
                  topRight: Radius.circular(10),
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Text(
                          'Confirmation',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    color: FlutterFlowTheme.of(context).heading,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0, 5, 0, 0),
                    child: Container(
                      width: 290,
                      height: 1,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ),
                  Text(
                    'Slot ID / Location',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Raleway',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Text(
                      FFAppState().slotid,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            fontSize: 28,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            lineHeight: 1,
                          ),
                    ),
                  ),
                  Text(
                    'Tray ID',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Raleway',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Text(
                      FFAppState().trayid,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            fontSize: 28,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.bold,
                            lineHeight: 1,
                          ),
                    ),
                  ),
                ].divide(const SizedBox(height: 8)).addToStart(const SizedBox(height: 15)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
              child: Text(
                'Slot & Tray QR',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Raleway',
                      color: FlutterFlowTheme.of(context).subHeader,
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.w600,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0, 0),
                    child: Text(
                      'Scanned Successfully',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            color: FlutterFlowTheme.of(context).subHeader,
                            fontSize: 16,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                  ),
                  Icon(
                    Icons.task_alt,
                    color: FlutterFlowTheme.of(context).subHeader,
                    size: 18,
                  ),
                ].divide(const SizedBox(width: 5)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Text(
                'Tap Confirm to Mapped Tray',
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Raleway',
                      color: FlutterFlowTheme.of(context).subHeader,
                      fontSize: 16,
                      letterSpacing: 0.5,
                      fontWeight: FontWeight.bold,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(15, 25, 15, 15),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      FFAppState().slotid = '';
                      FFAppState().trayid = '';
                      FFAppState().trayqrscan = 0;
                      FFAppState().update(() {});
                      _model.slotid = null;
                      _model.updatePage(() {});
                      Navigator.pop(context);

                      context.goNamed(
                        'home',
                        extra: <String, dynamic>{
                          kTransitionInfoKey: const TransitionInfo(
                            hasTransition: true,
                            transitionType: PageTransitionType.fade,
                            duration: Duration(milliseconds: 300),
                          ),
                        },
                      );
                    },
                    text: 'Cancel',
                    options: FFButtonOptions(
                      width: 100,
                      height: 40,
                      padding: const EdgeInsetsDirectional.fromSTEB(24, 0, 24, 0),
                      iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                      color: const Color(0x00FFFFFF),
                      textStyle:
                          FlutterFlowTheme.of(context).titleSmall.override(
                                fontFamily: 'Raleway',
                                color: FlutterFlowTheme.of(context).heading,
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                      elevation: 0,
                      borderSide: BorderSide(
                        color: FlutterFlowTheme.of(context).heading,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  ),
                  Container(
                    width: 100,
                    height: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          FlutterFlowTheme.of(context).heading,
                          FlutterFlowTheme.of(context).accent
                        ],
                        stops: const [0, 1],
                        begin: const AlignmentDirectional(1, 0),
                        end: const AlignmentDirectional(-1, 0),
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: FFButtonWidget(
                      onPressed: () async {
                        _model.trayMapingBtn =
                            await AdminApiGroup.mappingTrayAsnShuttleCall.call(
                          slotId: _model.slotid,
                          trayId: FFAppState().trayid,
                          robotId: FFAppState().robotid,
                        );

                        if ((_model.trayMapingBtn?.succeeded ?? true)) {
                          if (_model.slottype == 'picking_station') {
                            _model.taskPost1 =
                                await AdminApiGroup.postTaskCall.call(
                              trayId: FFAppState().trayid,
                              robotId: FFAppState().robotid,
                              taskType: 'admin',
                            );

                            if (!(_model.taskPost1?.succeeded ?? true)) {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MsgMappingWidget(
                                      msg: getJsonField(
                                        (_model.taskPost1?.jsonBody ?? ''),
                                        r'''$.message''',
                                      ).toString(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }
                          }
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: const SuccessfullWidget(),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          FFAppState().slotid = '';
                          FFAppState().trayid = '';
                          FFAppState().trayqrscan = 0;
                          FFAppState().update(() {});

                          context.goNamed(
                            'home',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 500),
                              ),
                            },
                          );

                          Navigator.pop(context);
                        } else {
                          FFAppState().trayid = '';
                          FFAppState().trayqrscan = 0;
                          FFAppState().update(() {});
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.viewInsetsOf(context),
                                child: MsgMappingWidget(
                                  msg: getJsonField(
                                    (_model.trayMapingBtn?.jsonBody ?? ''),
                                    r'''$.message''',
                                  ).toString(),
                                ),
                              );
                            },
                          ).then((value) => safeSetState(() {}));

                          context.goNamed(
                            'home',
                            extra: <String, dynamic>{
                              kTransitionInfoKey: const TransitionInfo(
                                hasTransition: true,
                                transitionType: PageTransitionType.fade,
                                duration: Duration(milliseconds: 500),
                              ),
                            },
                          );

                          Navigator.pop(context);
                        }

                        safeSetState(() {});
                      },
                      text: 'Confirm',
                      options: FFButtonOptions(
                        height: 40,
                        padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                        iconPadding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                        color: const Color(0x27351C75),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Raleway',
                                  color: Colors.white,
                                  fontSize: 16,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                        elevation: 0,
                        borderSide: const BorderSide(
                          color: Color(0xFF8E7CC3),
                        ),
                        borderRadius: BorderRadius.circular(5),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
