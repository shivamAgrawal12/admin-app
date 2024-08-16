// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<void> listtotalsaveinappstate(String? listcount) async {
  // Update FFAppState with the parameter value if it's not null
  if (listcount != null) {
    FFAppState().slotcount = listcount; // Store the value in slotcount
  } else {
    FFAppState().slotcount = "0"; // Default value if listcount is null
  }

  // Notify listeners about the state change
  FFAppState().notifyListeners();
}
