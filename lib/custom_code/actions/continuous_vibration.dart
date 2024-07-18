// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:vibration/vibration.dart';

Future continuousVibration(int v1, int v2, int v3, int v4) async {
  // Check if the device supports vibration
  if (await Vibration.hasVibrator() ?? false) {
    // Start vibration with a pattern
    Vibration.vibrate(
      pattern: [v1, v2, v3, v4],
      intensities: [0, 128, 0, 255],
    );
  }
}

Future<void> execute(Map<String, dynamic> inputs) async {
  // Extract inputs from the map
  int v1 = inputs['v1'] ?? 500;
  int v2 = inputs['v2'] ?? 1000;
  int v3 = inputs['v3'] ?? 500;
  int v4 = inputs['v4'] ?? 1000;

  await continuousVibration(v1, v2, v3, v4);
}
