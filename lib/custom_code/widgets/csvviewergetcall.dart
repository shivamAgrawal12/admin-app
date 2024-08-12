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

class Csvviewergetcall extends StatefulWidget {
  const Csvviewergetcall({
    super.key,
    this.width,
    this.height,
    this.jsonrecords,
    this.keys,
  });

  final double? width;
  final double? height;
  final List<dynamic>? jsonrecords;
  final List<String>? keys;

  @override
  State<Csvviewergetcall> createState() => _CsvviewergetcallState();
}

class _CsvviewergetcallState extends State<Csvviewergetcall> {
  // Function to generate table rows from JSON records using desired keys
  List<TableRow> generateTableRows(
      List<dynamic>? jsonDataList, List<String>? desiredKeys) {
    if (jsonDataList == null ||
        jsonDataList.isEmpty ||
        desiredKeys == null ||
        desiredKeys.isEmpty) {
      return [
        TableRow(children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("No data available."),
          ),
        ])
      ];
    }

    // Create table rows for headers
    List<TableRow> rows = [
      TableRow(
        children: desiredKeys.map((key) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              key,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          );
        }).toList(),
      ),
    ];

    // Create table rows for each record
    for (var json in jsonDataList) {
      Map<String, dynamic> jsonMap = Map<String, dynamic>.from(json);
      rows.add(
        TableRow(
          children: desiredKeys.map((key) {
            String value = jsonMap[key]?.toString() ?? '';
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(value),
            );
          }).toList(),
        ),
      );
    }

    return rows;
  }

  @override
  Widget build(BuildContext context) {
    List<TableRow> tableRows =
        generateTableRows(widget.jsonrecords, widget.keys);

    return Container(
      width: widget.width,
      height: widget.height,
      padding: const EdgeInsets.all(10),
      color: Colors.white,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Table(
            border: TableBorder.all(),
            children: tableRows,
          ),
        ),
      ),
    );
  }
}
