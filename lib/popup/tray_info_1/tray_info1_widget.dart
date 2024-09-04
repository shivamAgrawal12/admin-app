import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:provider/provider.dart';
import 'tray_info1_model.dart';
export 'tray_info1_model.dart';

class TrayInfo1Widget extends StatefulWidget {
  const TrayInfo1Widget({super.key});

  @override
  State<TrayInfo1Widget> createState() => _TrayInfo1WidgetState();
}

class _TrayInfo1WidgetState extends State<TrayInfo1Widget> {
  late TrayInfo1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrayInfo1Model());

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
        future: AdminApiGroup.trayInfoWithoutTypeCall.call(
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
          final containerTrayInfoWithoutTypeResponse = snapshot.data!;

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
                            width: 50,
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
                                    const EdgeInsetsDirectional.fromSTEB(6, 4, 6, 4),
                                child: Text(
                                  valueOrDefault<String>(
                                    getJsonField(
                                      containerTrayInfoWithoutTypeResponse
                                          .jsonBody,
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
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    fontSize: 28,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                    lineHeight: 1,
                                  ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 8)),
                  ),
                ),
                FutureBuilder<ApiCallResponse>(
                  future: AdminApiGroup.slotInfoByTrayIdCall.call(
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
                    final containerSlotInfoByTrayIdResponse = snapshot.data!;

                    return Container(
                      width: 260,
                      height: 50,
                      decoration: const BoxDecoration(),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Padding(
                            padding:
                                const EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                            child: RichText(
                              textScaler: MediaQuery.of(context).textScaler,
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Slot Id: ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Open Sans',
                                          color: FlutterFlowTheme.of(context)
                                              .primaryText,
                                          fontSize: 20,
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w600,
                                        ),
                                  ),
                                  TextSpan(
                                    text: valueOrDefault<String>(
                                      AdminApiGroup.slotInfoByTrayIdCall.slotid(
                                        containerSlotInfoByTrayIdResponse
                                            .jsonBody,
                                      ),
                                      '-',
                                    ),
                                    style: TextStyle(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20,
                                    ),
                                  )
                                ],
                                style: FlutterFlowTheme.of(context)
                                    .bodyMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      fontSize: 16,
                                      letterSpacing: 0.0,
                                    ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
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
                          text: '‘Available’',
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
                            letterSpacing: 0.5,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: RichText(
                    textScaler: MediaQuery.of(context).textScaler,
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: 'Tray type ',
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
                          text: valueOrDefault<String>(
                            AdminApiGroup.trayInfoWithoutTypeCall.type(
                              containerTrayInfoWithoutTypeResponse.jsonBody,
                            ),
                            '-',
                          ),
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
                            letterSpacing: 0.5,
                          ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 15, 0, 0),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(0),
                    child: Image.asset(
                      'assets/images/Group_5796.png',
                      width: 30,
                      height: 35,
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0, 20, 0, 15),
                  child: Container(
                    width: 140,
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
                        FFAppState().trayid = '';
                        FFAppState().update(() {});
                        Navigator.pop(context);
                      },
                      text: 'Return Back',
                      options: FFButtonOptions(
                        height: 45,
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
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
