import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/popup/msg_mapping/msg_mapping_widget.dart';
import '/popup/successfull/successfull_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'tray_removed_model.dart';
export 'tray_removed_model.dart';

class TrayRemovedWidget extends StatefulWidget {
  const TrayRemovedWidget({super.key});

  @override
  State<TrayRemovedWidget> createState() => _TrayRemovedWidgetState();
}

class _TrayRemovedWidgetState extends State<TrayRemovedWidget> {
  late TrayRemovedModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrayRemovedModel());

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
      child: FutureBuilder<ApiCallResponse>(
        future: AdminApiGroup.trayInfoCall.call(
          trayId: FFAppState().trayid,
          robotId: FFAppState().robotid,
        ),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 40,
                height: 40,
                child: SpinKitThreeBounce(
                  color: FlutterFlowTheme.of(context).subHeader,
                  size: 40,
                ),
              ),
            );
          }
          final containerTrayInfoResponse = snapshot.data!;

          return Container(
            width: 280,
            decoration: BoxDecoration(
              color: FlutterFlowTheme.of(context).liteBg,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: 290,
                  height: 125,
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
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Container(
                            width: 45,
                            height: 10,
                            decoration: const BoxDecoration(),
                          ),
                          Align(
                            alignment: const AlignmentDirectional(0, 0),
                            child: Text(
                              'Tray Info',
                              style: FlutterFlowTheme.of(context)
                                  .bodyMedium
                                  .override(
                                    fontFamily: 'Raleway',
                                    color: FlutterFlowTheme.of(context).heading,
                                    fontSize: 16,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: const Color(0x254D8218),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Align(
                              alignment: const AlignmentDirectional(0, 0),
                              child: Padding(
                                padding:
                                    const EdgeInsetsDirectional.fromSTEB(8, 4, 8, 4),
                                child: Text(
                                  valueOrDefault<String>(
                                    getJsonField(
                                      containerTrayInfoResponse.jsonBody,
                                      r'''$.status''',
                                    )?.toString(),
                                    '-',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Raleway',
                                        color: FlutterFlowTheme.of(context)
                                            .success,
                                        fontSize: 15,
                                        letterSpacing: 0.0,
                                        fontWeight: FontWeight.bold,
                                      ),
                                ),
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
                            color: FlutterFlowTheme.of(context)
                                .secondaryBackground,
                          ),
                        ),
                      ),
                      Text(
                        'Slot ID',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Raleway',
                              letterSpacing: 0.0,
                              fontWeight: FontWeight.w500,
                            ),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0, 0),
                        child: Text(
                          valueOrDefault<String>(
                            FFAppState().slotid,
                            '-',
                          ),
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    fontSize: 30,
                                    letterSpacing: 0.5,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1,
                                  ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 8)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Tray is ',
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Open Sans',
                                color: FlutterFlowTheme.of(context).primaryText,
                                fontSize: 16,
                                letterSpacing: 0.0,
                                fontWeight: FontWeight.w600,
                              ),
                        ),
                        TextSpan(
                          text: '‘In Use’',
                          style: TextStyle(
                            color: FlutterFlowTheme.of(context).heading,
                            fontWeight: FontWeight.w600,
                            fontSize: 16,
                          ),
                        )
                      ],
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Raleway',
                            fontSize: 16,
                            letterSpacing: 0.0,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: Image.asset(
                          'assets/images/Vector.png',
                          width: 18,
                          height: 18,
                          fit: BoxFit.contain,
                        ),
                      ),
                      Text(
                        'Tray ID',
                        style: FlutterFlowTheme.of(context).bodyMedium.override(
                              fontFamily: 'Raleway',
                              fontSize: 13,
                              letterSpacing: 0.0,
                            ),
                      ),
                    ].divide(const SizedBox(width: 8)),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: Text(
                    valueOrDefault<String>(
                      FFAppState().trayid,
                      '-',
                    ),
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Raleway',
                          fontSize: 18,
                          letterSpacing: 0.0,
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
                          FFAppState().trayid = '';
                          FFAppState().update(() {});
                          Navigator.pop(context);
                        },
                        text: 'Cancel',
                        options: FFButtonOptions(
                          width: 100,
                          height: 40,
                          padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                          iconPadding:
                              const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
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
                            _model.freeTray =
                                await AdminApiGroup.patchTrayIdInSlotCall.call(
                              id: FFAppState().slotrecid,
                            );

                            if ((_model.freeTray?.succeeded ?? true)) {
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
                            } else {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return Padding(
                                    padding: MediaQuery.viewInsetsOf(context),
                                    child: MsgMappingWidget(
                                      msg: AdminApiGroup.patchTrayIdInSlotCall
                                          .message(
                                        (_model.freeTray?.jsonBody ?? ''),
                                      )!,
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            }

                            Navigator.pop(context);

                            safeSetState(() {});
                          },
                          text: 'Submit',
                          options: FFButtonOptions(
                            height: 40,
                            padding: const EdgeInsetsDirectional.fromSTEB(5, 0, 5, 0),
                            iconPadding:
                                const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 0),
                            color: const Color(0x27351C75),
                            textStyle: FlutterFlowTheme.of(context)
                                .titleSmall
                                .override(
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
          );
        },
      ),
    );
  }
}
