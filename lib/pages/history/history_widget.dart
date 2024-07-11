import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/popup/menu/menu_widget.dart';
import '/custom_code/actions/index.dart' as actions;
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'history_model.dart';
export 'history_model.dart';

class HistoryWidget extends StatefulWidget {
  const HistoryWidget({super.key});

  @override
  State<HistoryWidget> createState() => _HistoryWidgetState();
}

class _HistoryWidgetState extends State<HistoryWidget>
    with TickerProviderStateMixin {
  late HistoryModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HistoryModel());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Align(
            alignment: const AlignmentDirectional(0.0, -1.0),
            child: Container(
              width: MediaQuery.sizeOf(context).width * 1.0,
              height: MediaQuery.sizeOf(context).height * 1.0,
              constraints: const BoxConstraints(
                minWidth: 320.0,
                maxWidth: 450.0,
              ),
              decoration: const BoxDecoration(),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 70.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xFFEEECF1),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await actions.stopcamera();

                              context.pushNamed(
                                'history',
                                extra: <String, dynamic>{
                                  kTransitionInfoKey: const TransitionInfo(
                                    hasTransition: true,
                                    transitionType: PageTransitionType.fade,
                                    duration: Duration(milliseconds: 0),
                                  ),
                                },
                              );
                            },
                            child: FaIcon(
                              FontAwesomeIcons.arrowLeft,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 24.0,
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.asset(
                              'assets/images/Group_42_(2).png',
                              width: 130.0,
                              height: 40.0,
                              fit: BoxFit.contain,
                            ),
                          ),
                          InkWell(
                            splashColor: Colors.transparent,
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () async {
                              await showModalBottomSheet(
                                isScrollControlled: true,
                                backgroundColor: Colors.transparent,
                                enableDrag: false,
                                context: context,
                                builder: (context) {
                                  return GestureDetector(
                                    onTap: () => _model
                                            .unfocusNode.canRequestFocus
                                        ? FocusScope.of(context)
                                            .requestFocus(_model.unfocusNode)
                                        : FocusScope.of(context).unfocus(),
                                    child: Padding(
                                      padding: MediaQuery.viewInsetsOf(context),
                                      child: const MenuWidget(),
                                    ),
                                  );
                                },
                              ).then((value) => safeSetState(() {}));
                            },
                            child: Container(
                              width: 31.0,
                              height: 31.0,
                              decoration: BoxDecoration(
                                color: FlutterFlowTheme.of(context).accent4,
                                shape: BoxShape.circle,
                              ),
                              child: Align(
                                alignment: const AlignmentDirectional(0.0, 2.8),
                                child: Icon(
                                  Icons.person_3,
                                  color: FlutterFlowTheme.of(context).heading,
                                  size: 28.0,
                                ),
                              ),
                            ),
                          ),
                        ].divide(const SizedBox(width: 6.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    height: 50.0,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      border: Border.all(
                        color: const Color(0xFFEEECF1),
                        width: 1.0,
                      ),
                    ),
                    child: Padding(
                      padding:
                          const EdgeInsetsDirectional.fromSTEB(10.0, 0.0, 10.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Completed Requests',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                  fontSize: 18.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ].divide(const SizedBox(width: 6.0)),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.sizeOf(context).width * 1.0,
                    constraints: const BoxConstraints(
                      minWidth: 320.0,
                      maxWidth: 450.0,
                    ),
                    decoration: const BoxDecoration(),
                    child: SizedBox(
                      height: 200.0,
                      child: Padding(
                        padding: const EdgeInsets.all(10.0),
                        child: Column(
                          children: [
                            Align(
                              alignment: const Alignment(0.0, 0),
                              child: TabBar(
                                labelColor:
                                    FlutterFlowTheme.of(context).primaryText,
                                unselectedLabelColor:
                                    FlutterFlowTheme.of(context).secondaryText,
                                labelStyle: FlutterFlowTheme.of(context)
                                    .titleMedium
                                    .override(
                                      fontFamily: 'Raleway',
                                      letterSpacing: 0.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                unselectedLabelStyle:
                                    FlutterFlowTheme.of(context)
                                        .titleMedium
                                        .override(
                                          fontFamily: 'Raleway',
                                          letterSpacing: 0.0,
                                          fontWeight: FontWeight.w500,
                                        ),
                                indicatorColor:
                                    FlutterFlowTheme.of(context).heading,
                                padding: const EdgeInsets.all(2.0),
                                tabs: const [
                                  Tab(
                                    text: '     Added     ',
                                  ),
                                  Tab(
                                    text: '     Removed     ',
                                  ),
                                ],
                                controller: _model.tabBarController,
                                onTap: (i) async {
                                  [() async {}, () async {}][i]();
                                },
                              ),
                            ),
                            Expanded(
                              child: TabBarView(
                                controller: _model.tabBarController,
                                children: [
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Container(
                                        width: 370.0,
                                        height: 75.0,
                                        constraints: const BoxConstraints(
                                          minWidth: 270.0,
                                          maxWidth: 370.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 5.0,
                                              color: Color(0x26000000),
                                              offset: Offset(
                                                1.0,
                                                3.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Slot ID : ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .liteText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: 'S5',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Action : ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .liteText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Added',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Tray ID : ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .liteText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: '852741963123',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              '02/07/2024, 20:02:24',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: const AlignmentDirectional(0.0, -1.0),
                                    child: Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          0.0, 10.0, 0.0, 0.0),
                                      child: Container(
                                        width: 370.0,
                                        height: 75.0,
                                        constraints: const BoxConstraints(
                                          minWidth: 270.0,
                                          maxWidth: 370.0,
                                        ),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .primaryBackground,
                                          boxShadow: const [
                                            BoxShadow(
                                              blurRadius: 5.0,
                                              color: Color(0x26000000),
                                              offset: Offset(
                                                1.0,
                                                3.0,
                                              ),
                                            )
                                          ],
                                          borderRadius:
                                              BorderRadius.circular(5.0),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.all(10.0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Slot ID : ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .liteText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: 'S5',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Action : ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .liteText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: 'Removed',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                              Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceEvenly,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text: 'Tray ID : ',
                                                          style: FlutterFlowTheme
                                                                  .of(context)
                                                              .bodyMedium
                                                              .override(
                                                                fontFamily:
                                                                    'Open Sans',
                                                                color: FlutterFlowTheme.of(
                                                                        context)
                                                                    .liteText,
                                                                fontSize: 14.0,
                                                                letterSpacing:
                                                                    0.0,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w500,
                                                              ),
                                                        ),
                                                        TextSpan(
                                                          text: '852741964878',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                  RichText(
                                                    textScaler:
                                                        MediaQuery.of(context)
                                                            .textScaler,
                                                    text: TextSpan(
                                                      children: [
                                                        TextSpan(
                                                          text:
                                                              '08/07/2024, 13:02:24',
                                                          style: TextStyle(
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .primaryText,
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            fontSize: 14.0,
                                                          ),
                                                        )
                                                      ],
                                                      style: FlutterFlowTheme
                                                              .of(context)
                                                          .bodyMedium
                                                          .override(
                                                            fontFamily:
                                                                'Open Sans',
                                                            letterSpacing: 0.0,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
