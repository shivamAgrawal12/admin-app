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

import 'dart:io';
import '/backend/api_requests/api_calls.dart';
import 'package:mobile_scanner/mobile_scanner.dart'; // Import MobileScanner
import '/popup/menu/menu_widget.dart';
import '/popup/friendly_name_wrg/friendly_name_wrg_widget.dart';
import '/popup/successfull/successfull_widget.dart' show SuccessfullWidget;
import '/custom_code/actions/index.dart' as actions;
import '/popup/wrong/wrong_widget.dart';

class LocationQRScan extends StatefulWidget {
  const LocationQRScan({
    super.key,
    this.width,
    this.height,
    this.locationid,
  });

  final double? width;
  final double? height;
  final String? locationid;

  @override
  State<LocationQRScan> createState() => _LocationQRScanState();
}

class _LocationQRScanState extends State<LocationQRScan> {
  MobileScannerController controller = MobileScannerController();
  bool isProcessing = false;
  @override
  void initState() {
    super.initState();
    initializeScanner();
  }

  void initializeScanner() async {
    if (FFAppState().scannerpage == "location") {
      print("Slot map QR initialized");
      await controller.start();
      // try {
      //   await controller.setZoomScale(currentZoom);
      // } catch (e) {
      //   print('Error setting initial zoom scale: $e');
      // }
    } else {
      print(
          "Scanner not initialized. FFAppState().scannerpage is not 'locationqr'.");
    }
  }

  @override
  void reassemble() {
    print("location qr initialized");
    super.reassemble();
    if (Platform.isAndroid) {
      controller.stop();
    }
    controller.start();
  }

  @override
  void dispose() {
    print("location qr disposed");
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
        ],
      ),
    );
  }

  Future<void> _handleScannedValue(String scannedValue) async {
    var _shouldSetState = false;

    if (FFAppState().friendlyname == scannedValue) {
      final taskCompleteResult = await AdminApiGroup.taskCompleteCall.call(
        id: FFAppState().taskrecid,
      );
      _shouldSetState = true;
      if (taskCompleteResult.succeeded) {
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
                child: SuccessfullWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));
      } else {
        await actions.continuousVibration(500, 1000, 500, 1000);
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
                child: WrongWidget(),
              ),
            );
          },
        ).then((value) => setState(() {}));
      }
    } else {
      await actions.continuousVibration(500, 1000, 500, 1000);
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
              child: FriendlyNameWrgWidget(),
            ),
          );
        },
      ).then((value) => setState(() {}));
      if (_shouldSetState) setState(() {});
      return;
    }
    if (_shouldSetState) setState(() {});
  }

  void _unfocusIfNeeded(BuildContext context) {
    if (FocusScope.of(context).hasFocus) {
      FocusScope.of(context).unfocus();
    }
  }
}
