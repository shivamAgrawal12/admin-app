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

import 'dart:io';
import '/backend/api_requests/api_calls.dart';
import 'package:mobile_scanner/mobile_scanner.dart'; // Import MobileScanner
import '/popup/tray_delete/tray_delete_widget.dart'; // Import TrayDeleteWidget
import '/popup/no_record/no_record_widget.dart'; // Import NoRecordWidget

class QRTrayDel extends StatefulWidget {
  const QRTrayDel({
    super.key,
    this.width,
    this.height,
  });

  final double? width;
  final double? height;

  @override
  State<QRTrayDel> createState() => _QRTrayDelState();
}

class _QRTrayDelState extends State<QRTrayDel> {
  MobileScannerController controller = MobileScannerController();
  bool isProcessing = false;
  double currentZoom = 0.7; // Initial zoom scale

  @override
  void initState() {
    print("tray del qr initialized");
    super.initState();
    initializeScanner();
  }

  void initializeScanner() async {
    if (FFAppState().scannerpage == "traydel") {
      print("Slot map QR initialized");
      await controller.start();
      try {
        await controller.setZoomScale(currentZoom);
      } catch (e) {
        print('Error setting initial zoom scale: $e');
      }
    } else {
      controller.stop();
      print(
          "Scanner not initialized. FFAppState().scannerpage is not 'traydel'.");
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
                await _handleScannedValue(scannedValue);
              } else {
                await _showNoRecordDialog(context, 'No value found');
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
    FFAppState().trayid = scannedValue;
    final result = await AdminApiGroup.trayInfoCall.call(
      trayId: scannedValue,
      robotId: FFAppState().robotid,
    );

    if (result.succeeded) {
      FFAppState().trayrecid = getJsonField(
        (result.jsonBody ?? ''),
        r'$.records[0].id',
      );
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
              child: TrayDeleteWidget(),
            ),
          );
        },
      ).then((value) => setState(() {}));
    } else {
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
  }

  Future<void> _showNoRecordDialog(BuildContext context, String message) async {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: Text('No Record Found'),
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
}
