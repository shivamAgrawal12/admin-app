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
import '/custom_code/actions/index.dart' as actions;
import 'dart:io';
import '/backend/api_requests/api_calls.dart';
import 'package:mobile_scanner/mobile_scanner.dart'; // Import MobileScanner
import '/popup/tray_removed/tray_removed_widget.dart'; // Import TrayRemovedWidget
import '/popup/no_record/no_record_widget.dart'; // Import NoRecordWidget

class QRTrayRemove extends StatefulWidget {
  const QRTrayRemove({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<QRTrayRemove> createState() => _QRTrayRemoveState();
}

class _QRTrayRemoveState extends State<QRTrayRemove>
    with WidgetsBindingObserver {
  MobileScannerController controller = MobileScannerController();
  bool isProcessing = false;
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

              final String? scannedValue =
                  barcodeCapture.barcodes.first.rawValue;

              if (scannedValue != null) {
                // Handle your API call and UI updates here
                await _handleScannedValue(scannedValue);
              } else {
                // Handle no value scenario if needed
              }

              setState(() {
                isProcessing = false;
              });
            },
          ),
          // Add any additional UI elements or controls here
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
    var _shouldSetState = false;
    final trayDetailsResult = await AdminApiGroup.trayInfoWithoutTypeCall.call(
      robotId: FFAppState().robotid,
      trayId: scannedValue,
    );
    _shouldSetState = true;
    if (trayDetailsResult.succeeded) {
      final slotIdByTrayResult = await AdminApiGroup.slotInfoByTrayIdCall.call(
        trayId: scannedValue,
        robotId: FFAppState().robotid,
      );
      _shouldSetState = true;
      FFAppState().slotrecid = AdminApiGroup.slotInfoByTrayIdCall.id(
        (slotIdByTrayResult.jsonBody ?? ''),
      )!;
      FFAppState().slotid = AdminApiGroup.slotInfoByTrayIdCall.slotid(
        (slotIdByTrayResult.jsonBody ?? ''),
      )!;
      FFAppState().update(() {});
      actions.continuousVibration(0, 0, 0, 500);
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () => _unfocusIfNeeded(context),
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: TrayRemovedWidget(),
            ),
          );
        },
      ).then((value) => setState(() {}));
    } else {
      actions.continuousVibration(500, 1000, 500, 1000);
      FFAppState().trayid = '';
      FFAppState().update(() {});
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () => _unfocusIfNeeded(context),
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: NoRecordWidget(),
            ),
          );
        },
      ).then((value) => setState(() {}));
    }
    if (_shouldSetState) setState(() {});
  }

  void _unfocusIfNeeded(BuildContext context) {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }
}
