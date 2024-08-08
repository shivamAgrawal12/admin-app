// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'dart:io';

// Initialize the subscription as a global variable
StreamSubscription<List<ConnectivityResult>>? subscription;

// This function sets up the connectivity listener
Future<void> connected() async {
  // Cancel previous subscription if it exists
  subscription?.cancel();

  // Start a new subscription to listen for connectivity changes
  subscription = Connectivity()
      .onConnectivityChanged
      .listen((List<ConnectivityResult> results) {
    // Assuming you want the first result if there are multiple
    if (results.isNotEmpty) {
      _handleConnectivityChange(results.first);
    }
  });
}

// Handle connectivity change
void _handleConnectivityChange(ConnectivityResult result) async {
  bool hasConnection = await checkConnection();

  // Update app state and print connectivity status
  FFAppState().update(() {
    FFAppState().connected = hasConnection;
    print('Connected: $hasConnection');
  });
  FFAppState().notifyListeners();
  print('Connected status updated: ${FFAppState().connected}');
}

// Test internet connection
Future<bool> checkConnection() async {
  try {
    final result = await InternetAddress.lookup('google.com');
    return result.isNotEmpty && result[0].rawAddress.isNotEmpty;
  } on SocketException catch (_) {
    return false;
  }
}

// The FFAppState class to handle the app state
class FFAppState extends ChangeNotifier {
  static final FFAppState _singleton = FFAppState._internal();
  factory FFAppState() => _singleton;
  FFAppState._internal();

  bool connected = false;

  void update(VoidCallback fn) {
    fn();
    notifyListeners();
  }
}
