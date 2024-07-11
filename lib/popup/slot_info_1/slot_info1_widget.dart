import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'slot_info1_model.dart';
export 'slot_info1_model.dart';

class SlotInfo1Widget extends StatefulWidget {
  const SlotInfo1Widget({super.key});

  @override
  State<SlotInfo1Widget> createState() => _SlotInfo1WidgetState();
}

class _SlotInfo1WidgetState extends State<SlotInfo1Widget> {
  late SlotInfo1Model _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SlotInfo1Model());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
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
      alignment: const AlignmentDirectional(0.0, -0.6),
      child: Container(
        width: 290.0,
        height: 330.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).liteBg,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: 290.0,
              height: 125.0,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).primaryBackground,
                boxShadow: const [
                  BoxShadow(
                    blurRadius: 25.0,
                    color: Color(0x338E7CC3),
                    offset: Offset(
                      0.0,
                      5.0,
                    ),
                  )
                ],
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(25.0),
                  bottomRight: Radius.circular(25.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
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
                        width: 60.0,
                        height: 10.0,
                        decoration: const BoxDecoration(),
                      ),
                      Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: Text(
                          'Slot Info',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Raleway',
                                    fontSize: 18.0,
                                    letterSpacing: 0.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                        ),
                      ),
                      Container(
                        width: 60.0,
                        height: 25.0,
                        decoration: BoxDecoration(
                          color: const Color(0x254D8218),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            'free',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  color: FlutterFlowTheme.of(context).success,
                                  fontSize: 15.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsetsDirectional.fromSTEB(0.0, 5.0, 0.0, 0.0),
                    child: Container(
                      width: 290.0,
                      height: 1.0,
                      decoration: BoxDecoration(
                        color: FlutterFlowTheme.of(context).secondaryBackground,
                      ),
                    ),
                  ),
                  Text(
                    'Slot ID',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Open Sans',
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.w500,
                        ),
                  ),
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: Text(
                      FFAppState().slotid,
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            fontSize: 30.0,
                            letterSpacing: 0.5,
                            fontWeight: FontWeight.bold,
                            lineHeight: 1.0,
                          ),
                    ),
                  ),
                ].divide(const SizedBox(height: 8.0)),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
              child: RichText(
                textScaler: MediaQuery.of(context).textScaler,
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: 'Slot is ',
                      style: FlutterFlowTheme.of(context).bodyMedium.override(
                            fontFamily: 'Open Sans',
                            color: FlutterFlowTheme.of(context).primaryText,
                            fontSize: 18.0,
                            letterSpacing: 0.0,
                            fontWeight: FontWeight.w600,
                          ),
                    ),
                    TextSpan(
                      text: '‘Available’',
                      style: TextStyle(
                        color: FlutterFlowTheme.of(context).heading,
                        fontWeight: FontWeight.w600,
                        fontSize: 18.0,
                      ),
                    )
                  ],
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Open Sans',
                        fontSize: 18.0,
                        letterSpacing: 0.5,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Image.asset(
                  'assets/images/Group_5796.png',
                  width: 40.0,
                  height: 40.0,
                  fit: BoxFit.contain,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: Container(
                width: 170.0,
                height: 45.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      FlutterFlowTheme.of(context).heading,
                      FlutterFlowTheme.of(context).accent
                    ],
                    stops: const [0.0, 1.0],
                    begin: const AlignmentDirectional(1.0, 0.0),
                    end: const AlignmentDirectional(-1.0, 0),
                  ),
                  borderRadius: BorderRadius.circular(5.0),
                ),
                child: FFButtonWidget(
                  onPressed: () async {
                    await actions.stopcamera();
                    FFAppState().slotid = '';
                    FFAppState().update(() {});

                    context.pushNamed(
                      'slot_info_scan',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  text: 'Return Back',
                  options: FFButtonOptions(
                    height: 45.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0x27351C75),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 17.0,
                          letterSpacing: 1.0,
                          fontWeight: FontWeight.w600,
                        ),
                    elevation: 0.0,
                    borderSide: const BorderSide(
                      color: Color(0xFF8E7CC3),
                    ),
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
