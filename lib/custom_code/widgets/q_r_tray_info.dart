// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart'; // Imports custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets

import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart' as actions; // Imports custom actions

import 'index.dart'; // Imports other custom widgets
import '/custom_code/actions/index.dart' as actions;
import 'package:mobile_scanner/mobile_scanner.dart';
import 'dart:io';
import 'package:flutter/services.dart';
import '/backend/api_requests/api_calls.dart';
import '/popup/no_record/no_record_widget.dart';
import '/popup/tray_info_1/tray_info1_widget.dart';
import '/popup/menu/menu_widget.dart';

import '/popup/tray_info_1/tray_info1_widget.dart';

class QRTrayInfo extends StatefulWidget {
  const QRTrayInfo({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  _QRTrayInfoState createState() => _QRTrayInfoState();
}

class _QRTrayInfoState extends State<QRTrayInfo> with WidgetsBindingObserver {
  MobileScannerController controller = MobileScannerController();
  bool isProcessing = false; // Variable to prevent multiple scans at once
  double currentZoom = 0.7; // Initial zoom scale

  bool isStarted = false; // Track if the scanner is started

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    initializeScanner();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.stop();
    }
    controller.start().then((_) {
      controller.setZoomScale(0.8).catchError((error) {
        print('Error setting zoom scale: $error');
      });
      setState(() {
        isStarted = true;
        print(
            'Scanner started: $isStarted'); // Print the status of isStarted // Scanner has started
      });
    });
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    print('AppLifecycleState: $state');
    print(
        'Scanner started: $isStarted'); // Print the status of isStarted // Scanner has started
    switch (state) {
      case AppLifecycleState.resumed:
        print('Scanner and applifestate resumed');
        initializeScanner();
        break;
      case AppLifecycleState.inactive:
        print('Scanner and applifestate inactive');
        controller.stop();
        setState(() {
          isStarted = false; // Scanner has stopped
        });
      case AppLifecycleState.paused:
        print('Scanner and applifestate pushed');
        controller.stop();
        setState(() {
          isStarted = false; // Scanner has stopped
        });
      case AppLifecycleState.detached:
      case AppLifecycleState.hidden:
        print('Scanner and applifestate hidden');
        controller.stop();
        setState(() {
          isStarted = false; // Scanner has stopped
        });
        break;
    }
  }

  Future<void> initializeScanner() async {
    print("login qr started");
    controller.start().then((_) {
      print(
          'Scanner started: $isStarted'); // Print the status of isStarted // Scanner has started
      controller.setZoomScale(0.8).catchError((error) {
        print('Error setting zoom scale: $error');
      });
      setState(() {
        isStarted = true; // Scanner has started
      });
    }).catchError((error) {
      print('Error starting scanner: $error');
    });
  }

  @override
  void dispose() {
    controller.dispose();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          MobileScanner(
            controller: controller,
            onDetect: (barcodeCapture) async {
              if (isProcessing) return;
              setState(() {
                isProcessing = true;
              });

              final String? code = barcodeCapture.barcodes.first.rawValue;

              if (code != null) {
                FFAppState().trayid = code; // Store scanned value in trayid
                print("Tray ID: ${FFAppState().trayid}");
                await _handleScannedValue(code);
              } else {
                await _showWrongStoreDialog(context, 'no value found');
              }

              Future.delayed(Duration(seconds: 1), () {
                setState(() {
                  isProcessing = false;
                });
              });
            },
          ),
          Positioned(
            bottom: 12.0,
            left: 12.0,
            child: SizedBox(
              width: 35,
              height: 35,
              child: FloatingActionButton(
                onPressed: () async {
                  // Zoom out logic
                  try {
                    currentZoom -= 0.1;
                    if (currentZoom < 0.1) currentZoom = 0.1; // Minimum zoom
                    await controller.setZoomScale(currentZoom);
                  } catch (e) {
                    print('Error setting zoom scale: $e');
                  }
                },
                child: Icon(Icons.zoom_out),
                mini: true, // Make the button smaller
              ),
            ),
          ),
          Positioned(
            bottom: 12.0,
            left: MediaQuery.of(context).size.width / 2 - 60,
            child: SizedBox(
              width: 35,
              height: 35,
              child: FloatingActionButton(
                onPressed: () async {
                  try {
                    await controller.toggleTorch();
                  } catch (e) {
                    print('Error toggling torch: $e');
                  }
                },
                child: Icon(Icons.flash_on),
                mini: true, // Make the button smaller
              ),
            ),
          ),
          Positioned(
            bottom: 12.0,
            right: 12.0,
            child: SizedBox(
              width: 35,
              height: 35,
              child: FloatingActionButton(
                onPressed: () async {
                  // Zoom in logic
                  try {
                    currentZoom += 0.1;
                    if (currentZoom > 1.0) currentZoom = 1.0; // Maximum zoom
                    await controller.setZoomScale(currentZoom);
                  } catch (e) {
                    print('Error setting zoom scale: $e');
                  }
                },
                child: Icon(Icons.zoom_in),
                mini: true, // Make the button smaller
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleScannedValue(String scannedValue) async {
    FFAppState().trayid = scannedValue;
    print("Tray scanned Value : ${FFAppState().trayid}");
    bool _shouldSetState = false;
    var trayDetailBtn;
    _shouldSetState = true;
    trayDetailBtn = await AdminApiGroup.trayInfoWithoutTypeCall.call(
      robotId: FFAppState().robotid,
      trayId: scannedValue,
    );
    _shouldSetState = true;
    final jsonBody = trayDetailBtn.jsonBody;

    // Print the details of jsonBody
    print("Tray info details: $jsonBody");
    if ((trayDetailBtn?.succeeded ?? true)) {
      final status = AdminApiGroup.trayInfoCall.traystatus(
        (trayDetailBtn?.jsonBody ?? ''),
      );
      print("Tray Status: $status");
      actions.continuousVibration(0, 0, 0, 500);
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: TrayInfo1Widget(),
            ),
          );
        },
      ).then((value) => safeSetState(() {}));

      if (_shouldSetState) setState(() {});
      return;
    } else {
      FFAppState().trayid = '';
      FFAppState().update(() {});
      actions.continuousVibration(500, 1000, 500, 1000);
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: MediaQuery.viewInsetsOf(context),
              child: NoRecordWidget(),
            ),
          );
        },
      ).then((value) => safeSetState(() {}));
      if (_shouldSetState) setState(() {});
      return;
    }
    if (_shouldSetState) setState(() {});
  }

  Future<void> _showWrongStoreDialog(
      BuildContext context, String scannedValue) async {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Wrong store please scan again'),
          content: Text('no value found'),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: Text('Ok'),
            ),
          ],
        );
      },
    );
  }
}
