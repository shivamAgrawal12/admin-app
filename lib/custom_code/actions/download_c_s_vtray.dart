// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:download/download.dart';
import 'package:intl/intl.dart';

Future<void> downloadCSVtray(
  List<dynamic>? jsonDataList,
  String filename,
) async {
  // Check if the JSON list is null or empty
  if (jsonDataList == null || jsonDataList.isEmpty) {
    print("JSON list is null or empty.");
    return;
  }

  // Specify the keys you want to include in the CSV
  List<String> desiredKeys = ['robot_id', 'tray_id', 'type', 'tray_height'];

  // Create a string to hold the CSV data
  StringBuffer csvData = StringBuffer();

  // Add the desired keys as headers to the CSV string
  csvData.writeln(desiredKeys.map((key) => '"$key"').join(","));

  // Loop through the objects and add their values to the CSV string
  for (var json in jsonDataList) {
    Map<String, dynamic> jsonMap = Map<String, dynamic>.from(json);
    List<String> values = [];
    for (String key in desiredKeys) {
      String value = jsonMap[key]?.toString() ?? '';
      // Escape any quotes in the value by doubling them
      value = value.replaceAll('"', '""');
      // Wrap each value in quotes to handle commas and special characters
      values.add('"$value"');
    }
    csvData.writeln(values.join(","));
  }

  // Generate a formatted timestamp for the filename
  final formattedDateTime =
      DateFormat('yyyyMMdd_HHmmss').format(DateTime.now());

  // Use the provided filename and add a timestamp
  final fileName = '$filename$formattedDateTime.csv';

  // Convert the CSV string to a list of bytes (Uint8List)
  Uint8List csvBytes = Uint8List.fromList(csvData.toString().codeUnits);

  // Convert the Uint8List to a Stream<int>
  Stream<int> csvStream = Stream.fromIterable(csvBytes.map((byte) => byte));

  // Download the CSV file with the custom filename
  await download(csvStream, fileName);
}
