// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import '/popup/nointernet/nointernet_widget.dart';
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';

Future<void> checkAndUpdateConnectionStatus(BuildContext context) async {
  // Check internet connection
  bool isConnected = await InternetConnection().hasInternetAccess;

  // Update FFAppState with the connection status
  FFAppState().connected = isConnected;

  // Notify listeners about the state change
  FFAppState().notifyListeners();
  print('Connected2: $isConnected');

  // If not connected, show the NoInternetWidget as a bottom sheet
  if (!isConnected) {
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
            child:
                const NointernetWidget(), // Assuming this widget is a modal bottom sheet
          ),
        );
      },
    );
  }
}
