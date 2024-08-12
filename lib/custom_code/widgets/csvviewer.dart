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

import 'package:csv/csv.dart';

class Csvviewer extends StatefulWidget {
  const Csvviewer({
    super.key,
    this.width,
    this.height,
    required this.csvfile,
  });

  final double? width;
  final double? height;
  final FFUploadedFile csvfile;

  @override
  State<Csvviewer> createState() => _CsvviewerState();
}

class _CsvviewerState extends State<Csvviewer> {
  late Future<List<List<dynamic>>> _csvData;

  @override
  void initState() {
    super.initState();
    _csvData = _loadCSV();
  }

  Future<List<List<dynamic>>> _loadCSV() async {
    // Convert the file bytes to a string
    final csvString = String.fromCharCodes(widget.csvfile.bytes!);
    // Parse the CSV string into a list of lists
    return const CsvToListConverter(eol: "\n").convert(csvString);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,
      height: widget.height,
      child: FutureBuilder<List<List<dynamic>>>(
        future: _csvData,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (snapshot.hasError) {
            return Center(child: Text('Error: ${snapshot.error}'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text('No data found'));
          } else {
            final data = snapshot.data!;
            return SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: DataTable(
                  columns: data.first
                      .map((column) => DataColumn(
                            label: Text(column.toString()),
                          ))
                      .toList(),
                  rows: data
                      .skip(1)
                      .map((row) => DataRow(
                            cells: row
                                .map((cell) => DataCell(
                                      Container(
                                        width: 100, // Adjust width as needed
                                        child: Text(
                                          cell.toString(),
                                          softWrap: true,
                                          overflow: TextOverflow.clip,
                                        ),
                                      ),
                                    ))
                                .toList(),
                          ))
                      .toList(),
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
