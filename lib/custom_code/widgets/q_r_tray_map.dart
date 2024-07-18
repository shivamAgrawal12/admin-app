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

import 'dart:io';
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

  @override
  void initState() {
    super.initState();
    controller.start();
  }

  @override
  void reassemble() {
    super.reassemble();
    if (Platform.isAndroid) {
      controller.stop();
    }
    controller.start();
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
        ],
      ),
    );
  }

  Future<void> _handleScannedValue(String scannedValue) async {
    FFAppState().trayid = scannedValue;
    print("tray id : ${FFAppState().trayid}");

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
