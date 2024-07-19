import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/upload_data.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'uplod_csv_spot_model.dart';
export 'uplod_csv_spot_model.dart';

class UplodCsvSpotWidget extends StatefulWidget {
  const UplodCsvSpotWidget({super.key});

  @override
  State<UplodCsvSpotWidget> createState() => _UplodCsvSpotWidgetState();
}

class _UplodCsvSpotWidgetState extends State<UplodCsvSpotWidget> {
  late UplodCsvSpotModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => UplodCsvSpotModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const AlignmentDirectional(0.0, -0.6),
      child: Container(
        width: 260.0,
        height: 275.0,
        decoration: BoxDecoration(
          color: FlutterFlowTheme.of(context).liteBg,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              width: 290.0,
              height: 60.0,
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
                  bottomLeft: Radius.circular(20.0),
                  bottomRight: Radius.circular(20.0),
                  topLeft: Radius.circular(10.0),
                  topRight: Radius.circular(10.0),
                ),
              ),
              child: Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Text(
                  'Uplode Slots Details',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Raleway',
                        color: FlutterFlowTheme.of(context).heading,
                        fontSize: 16.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Text(
                'Note:  file should only in csv formate.',
                textAlign: TextAlign.center,
                style: FlutterFlowTheme.of(context).bodyMedium.override(
                      fontFamily: 'Raleway',
                      color: FlutterFlowTheme.of(context).error,
                      fontSize: 16.0,
                      letterSpacing: 0.0,
                      fontWeight: FontWeight.w600,
                      lineHeight: 1.5,
                    ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 15.0, 0.0, 0.0),
              child: Container(
                width: 220.0,
                height: 50.0,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5.0),
                  border: Border.all(
                    color: FlutterFlowTheme.of(context).heading,
                    width: 1.5,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(0.0, 0.0),
                      child: InkWell(
                        splashColor: Colors.transparent,
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () async {
                          final selectedFiles = await selectFiles(
                            multiFile: false,
                          );
                          if (selectedFiles != null) {
                            setState(() => _model.isDataUploading = true);
                            var selectedUploadedFiles = <FFUploadedFile>[];

                            try {
                              showUploadMessage(
                                context,
                                'Uploading file...',
                                showLoading: true,
                              );
                              selectedUploadedFiles = selectedFiles
                                  .map((m) => FFUploadedFile(
                                        name: m.storagePath.split('/').last,
                                        bytes: m.bytes,
                                      ))
                                  .toList();
                            } finally {
                              ScaffoldMessenger.of(context)
                                  .hideCurrentSnackBar();
                              _model.isDataUploading = false;
                            }
                            if (selectedUploadedFiles.length ==
                                selectedFiles.length) {
                              setState(() {
                                _model.uploadedLocalFile =
                                    selectedUploadedFiles.first;
                              });
                              showUploadMessage(
                                context,
                                'Success!',
                              );
                            } else {
                              setState(() {});
                              showUploadMessage(
                                context,
                                'Failed to upload file',
                              );
                              return;
                            }
                          }
                        },
                        child: FaIcon(
                          FontAwesomeIcons.cloudUploadAlt,
                          color: FlutterFlowTheme.of(context).liteText,
                          size: 24.0,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsetsDirectional.fromSTEB(0.0, 25.0, 0.0, 0.0),
              child: Container(
                width: 120.0,
                height: 40.0,
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
                    context.pushNamed(
                      'register_robot',
                      extra: <String, dynamic>{
                        kTransitionInfoKey: const TransitionInfo(
                          hasTransition: true,
                          transitionType: PageTransitionType.fade,
                          duration: Duration(milliseconds: 0),
                        ),
                      },
                    );
                  },
                  text: 'Uplode',
                  options: FFButtonOptions(
                    height: 40.0,
                    padding: const EdgeInsetsDirectional.fromSTEB(5.0, 0.0, 5.0, 0.0),
                    iconPadding:
                        const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                    color: const Color(0x27351C75),
                    textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 16.0,
                          letterSpacing: 0.0,
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
