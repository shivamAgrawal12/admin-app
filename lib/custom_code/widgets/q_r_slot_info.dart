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

import 'index.dart'; // Imports other custom widgets

import 'package:mobile_scanner/mobile_scanner.dart';
import '/custom_code/actions/index.dart' as actions;
import 'dart:io';
import 'package:flutter/services.dart';
import '/backend/api_requests/api_calls.dart';
import '/popup/no_record/no_record_widget.dart';
import '/popup/slot_info_1/slot_info1_widget.dart';
import '/popup/slot_info_2/slot_info2_widget.dart';

class QRSlotInfo extends StatefulWidget {
  const QRSlotInfo({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<QRSlotInfo> createState() => _QRSlotInfoState();
}

class _QRSlotInfoState extends State<QRSlotInfo> with WidgetsBindingObserver {
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
                await _handleScannedValue(code); // Handle the scanned value
              } else {
                await _showWrongStoreDialog(context, 'No value found');
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
                mini: true,
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
                mini: true,
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
                mini: true,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Future<void> _handleScannedValue(String scannedValue) async {
    bool _shouldSetState = false;
    var slotDetailBtn;

    _shouldSetState = true;
    FFAppState().slotid = scannedValue;
    print("slot id :${FFAppState().slotid}");
    slotDetailBtn = await AdminApiGroup.slotInfoCall.call(
      slotId: scannedValue,
      robotId: FFAppState().robotid,
    );
    _shouldSetState = true;

    if ((slotDetailBtn?.succeeded ?? true)) {
      print("json results : ${slotDetailBtn.jsonBody}");
      print("scanned value : $scannedValue");
      final status =
          AdminApiGroup.slotInfoCall.status((slotDetailBtn?.jsonBody ?? ''));
      print("Slot Status: $status");
      actions.continuousVibration(0, 0, 0, 500);
      if (status == 'free') {
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
                child: SlotInfo1Widget(),
              ),
            );
          },
        );
        // ).then((value) => safeSetState(() {}));
      } else {
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
                child: SlotInfo2Widget(),
              ),
            );
          },
        );
        // ).then((value) => safeSetState(() {}));
      }
      if (_shouldSetState) setState(() {});
      return;
    } else {
      FFAppState().slotid = '';
      actions.continuousVibration(500, 1000, 500, 1000);
      // FFAppState().update(() {});
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
      );
      // ).then((value) => safeSetState(() {}));
      if (_shouldSetState) setState(() {});
      return;
    }
    if (_shouldSetState) setState(() {});
  }

  Future<void> _showWrongStoreDialog(
      BuildContext context, String message) async {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('Wrong store please scan again'),
          content: Text(message),
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

  void _unfocusIfNeeded(BuildContext context) {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }

  // @override
  // void dispose() {
  //   controller.dispose();
  //   super.dispose();
  // }
}
