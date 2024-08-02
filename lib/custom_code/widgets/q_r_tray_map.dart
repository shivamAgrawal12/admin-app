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

import 'dart:io';
import '/custom_code/actions/index.dart' as actions;
import '/backend/api_requests/api_calls.dart';
import 'package:mobile_scanner/mobile_scanner.dart'; // Import MobileScanner
import '/popup/mapping_confirmation/mapping_confirmation_widget.dart';
import '/popup/no_record/no_record_widget.dart';

class QRTrayMap extends StatefulWidget {
  const QRTrayMap({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<QRTrayMap> createState() => _QRTrayMapState();
}

class _QRTrayMapState extends State<QRTrayMap> {
  MobileScannerController controller = MobileScannerController();
  bool isProcessing = false;
  double currentZoom = 0.7; // Initial zoom scale

  @override
  void initState() {
    super.initState();
    initializeScanner();
  }

  void initializeScanner() async {
    if (FFAppState().scannerpage == "traymap") {
      print("Slot map QR initialized");
      await controller.start();
      try {
        await controller.setZoomScale(0.7);
      } catch (e) {
        print('Error setting initial zoom scale: $e');
      }
    } else {
      print(
          "Scanner not initialized. FFAppState().scannerpage is not 'traymap'.");
    }
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.stop();
    }
    initializeScanner();
  }

  @override
  void dispose() {
    controller.dispose();
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
    print("tray id : ${FFAppState().trayid}");
    actions.continuousVibration(0, 0, 0, 500);
    controller.stop();
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
            child: MappingConfirmationWidget(),
          ),
        );
      },
    ).then((value) => setState(() {}));

    // final result = await AdminApiGroup.trayInfoCall.call(
    //   trayId: scannedValue,
    //   robotId: FFAppState().robotid,
    // );

    // if (result.succeeded) {
    //   // Print the entire JSON response
    //   print("JSON tray results: ${result.jsonBody}");

    //   // Extract and print the `id` field from the JSON response
    //   final trayId = getJsonField(
    //     (result.jsonBody ?? ''),
    //     r'$.records[0].id',
    //   );

    //   print("Extracted tray ID: $trayId");
    //   print("Scanned Value: $scannedValue");
    //   // Update the app state

    //   // FFAppState().scannedValue = scannedValue;
    // } else {
    //   await showModalBottomSheet(
    //     isScrollControlled: true,
    //     backgroundColor: Colors.transparent,
    //     enableDrag: false,
    //     context: context,
    //     builder: (context) {
    //       return GestureDetector(
    //         onTap: () => _unfocusIfNeeded(context),
    //         child: Padding(
    //           padding: MediaQuery.of(context).viewInsets,
    //           child: NoRecordWidget(),
    //         ),
    //       );
    //     },
    //   ).then((value) => setState(() {}));
    // }
  }

  void _unfocusIfNeeded(BuildContext context) {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }
}
