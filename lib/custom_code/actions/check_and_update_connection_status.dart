// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:io' show Platform;
import 'package:flutter/foundation.dart' show kIsWeb;
// Import the package for non-web environments
import 'package:internet_connection_checker_plus/internet_connection_checker_plus.dart';
import '/popup/nointernet/nointernet_widget.dart';

Future<void> checkAndUpdateConnectionStatus(
  BuildContext context,
  String? pagename, // Page name passed as parameter
) async {
  bool isConnected;

  // Check internet connection based on platform
  if (kIsWeb) {
    // For web, use a simple online check
    isConnected = await checkWebConnection();
  } else {
    // For non-web (mobile/desktop), use InternetConnectionCheckerPlus
    isConnected = await InternetConnectionCheckerPlus().hasConnection;
  }

  // Update FFAppState with the connection status
  bool previousConnectionStatus = FFAppState().connected;
  FFAppState().connected = isConnected;

  // Notify listeners about the state change
  FFAppState().notifyListeners();
  print('Connected: $isConnected');

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

  // If previously disconnected and now connected, refresh the page
  if (!previousConnectionStatus && isConnected) {
    // Close the modal bottom sheet if open
    if (Navigator.canPop(context)) {
      Navigator.pop(context);
    }

    // Dynamically navigate to the provided page
    if (pagename != null && pagename.isNotEmpty) {
      context.pushNamed(
        pagename,
        extra: <String, dynamic>{
          kTransitionInfoKey: TransitionInfo(
            hasTransition: true,
            transitionType: PageTransitionType.fade,
            duration: Duration(milliseconds: 0),
          ),
        },
      );
    } else {
      print('No page name provided');
    }
  }
}

// Function to check internet connection for web
Future<bool> checkWebConnection() async {
  try {
    final result = await Uri.tryParse('https://google.com');
    return result != null;
  } catch (e) {
    return false;
  }
}
