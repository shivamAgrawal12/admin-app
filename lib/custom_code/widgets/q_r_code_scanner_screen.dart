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
import '/backend/api_requests/api_calls.dart';
import '/auth/custom_auth/auth_util.dart';
import '/popup/new_robot/new_robot_widget.dart';
import '/pages/robot_scan/robot_scan_widget.dart' show RobotScanWidget;
import 'package:mobile_scanner/mobile_scanner.dart';
import 'dart:io';
import 'package:flutter/services.dart';

class QRCodeScannerScreen extends StatefulWidget {
  const QRCodeScannerScreen({
    Key? key,
    this.width,
    this.height,
  }) : super(key: key);

  final double? width;
  final double? height;

  @override
  State<QRCodeScannerScreen> createState() => _QRCodeScannerScreenState();
}

class _QRCodeScannerScreenState extends State<QRCodeScannerScreen> {
  MobileScannerController controller = MobileScannerController();
  bool isProcessing = false;
  bool _shouldSetState = false;
  bool loggedIn = false;
  double currentZoom = 0.7; // Initial zoom scale

  @override
  void initState() {
    super.initState();
    initializeScanner();
  }

  void initializeScanner() async {
    print("qr code scanner initialized");
    await controller.start();
    try {
      await controller.setZoomScale(currentZoom);
    } catch (e) {
      print('Error setting initial zoom scale: $e');
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
                FFAppState().robotid = code; // Store scanned value in robotid
                await _handleScannedCode(code, context);
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
                  // Torch toggle logic
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

  Future<void> _handleScannedCode(String code, BuildContext context) async {
    _shouldSetState = true;
    final result = await AdminApiGroup.verifyRobotIdCall.call(
      robotId: FFAppState().robotid,
    );

    if (result.succeeded) {
      FFAppState().robotid = code;
      setState(() {});
      if (loggedIn) {
        context.pushNamed(
          'home',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      } else {
        context.pushNamed(
          'login_page',
          extra: <String, dynamic>{
            kTransitionInfoKey: TransitionInfo(
              hasTransition: true,
              transitionType: PageTransitionType.fade,
              duration: Duration(milliseconds: 0),
            ),
          },
        );
      }
    } else {
      await showModalBottomSheet(
        isScrollControlled: true,
        backgroundColor: Colors.transparent,
        enableDrag: false,
        context: context,
        builder: (context) {
          return GestureDetector(
            onTap: () => FocusScope.of(context).unfocus(),
            child: Padding(
              padding: MediaQuery.of(context).viewInsets,
              child: NewRobotWidget(),
            ),
          );
        },
      );
      // ).then((value) => safeSetState(() {}));
      if (_shouldSetState) setState(() {});
    }
  }

  Future<void> _showWrongStoreDialog(
    BuildContext context,
    String message,
  ) async {
    await showDialog(
      context: context,
      builder: (alertDialogContext) {
        return AlertDialog(
          title: const Text('Wrong store, please scan again'),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(alertDialogContext),
              child: const Text('Ok'),
            ),
          ],
        );
      },
    );
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
