import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/schema/structs/index.dart';
import '/auth/custom_auth/auth_util.dart';

bool? checklength(String? textfield) {
  // Check if the input string is not null and has a length of 10
  return textfield != null && textfield.length == 10;
}

String? datetimeformet(String? datetime) {
  if (datetime == null) {
    return 'Invalid date';
  }

  DateTime? parsedDateTime;
  try {
    parsedDateTime = DateTime.parse(datetime).toLocal();
  } catch (e) {
    return 'Invalid date format';
  }

  DateFormat customFormat = DateFormat('yyyy-MM-dd, h:mm a');
  String formattedDateTime = customFormat.format(parsedDateTime);

  return formattedDateTime;
}

dynamic jsontostring(String? jsonstring) {
  return jsonstring;
}

DateTime? tokenexp(int secondsToAdd) {
  DateTime currentTime = DateTime.now();

  // Add seconds to the current time
  DateTime newDateTime = currentTime.add(Duration(seconds: secondsToAdd));

  // Return the resulting DateTime object
  return newDateTime;
}

String? dateformate(DateTime? date) {
  if (date == null) {
    return null;
  }

  return DateFormat('yyyy-MM-dd').format(date);
}

dynamic jsontoint(int? jsonint) {
  return jsonint;
}

List<dynamic> singleitemview(List<dynamic>? itemslist) {
  // Check if itemslist is a List
  if (itemslist == null || itemslist is! List) {
    return [];
  }

  for (var item in itemslist) {
    if (item['item_pick_status'] == 'ready_for_pickup') {
      return [item];
    }
  }

  return [];
}

dynamic searchallpicking(
  List<dynamic>? records,
  String? searchdata,
) {
  if (records == null ||
      records.isEmpty ||
      searchdata == null ||
      searchdata.isEmpty) {
    return records;
  }

  String searchQuery = searchdata.toLowerCase();
  List<dynamic> result = [];

  for (var item in records) {
    if (item is Map<String, dynamic>) {
      var nameField = item['friendly_name'];

      if (nameField != null && nameField is String) {
        String itemName = nameField.toLowerCase();

        if (itemName.contains(searchQuery)) {
          result.add(item);
        }
      }
    }
  }

  return result.isNotEmpty ? result : records;
}

dynamic searchallslot(
  List<dynamic>? records,
  String? searchdata,
) {
  if (records == null ||
      records.isEmpty ||
      searchdata == null ||
      searchdata.isEmpty) {
    return records;
  }

  String searchQuery = searchdata.toLowerCase();
  List<dynamic> result = [];

  for (var item in records) {
    if (item is Map<String, dynamic>) {
      var nameField = item['slot_id'];

      if (nameField != null && nameField is String) {
        String itemName = nameField.toLowerCase();

        if (itemName.contains(searchQuery)) {
          result.add(item);
        }
      }
    }
  }

  return result.isNotEmpty ? result : records;
}

String? changeformateDT(String? datetime) {
  if (datetime == null) {
    return 'Invalid date';
  }

  DateTime? parsedDateTime;
  try {
    parsedDateTime = DateTime.parse(datetime).toLocal();
  } catch (e) {
    return 'Invalid date format';
  }

  // Update the format to use a 24-hour time format
  DateFormat customFormat = DateFormat('yyyy-MM-dd HH:mm');
  String formattedDateTime = customFormat.format(parsedDateTime);

  return formattedDateTime;
}

dynamic searchalltray(
  List<dynamic>? records,
  String? searchdata,
) {
  if (records == null ||
      records.isEmpty ||
      searchdata == null ||
      searchdata.isEmpty) {
    return records;
  }

  String searchQuery = searchdata.toLowerCase();
  List<dynamic> result = [];

  for (var item in records) {
    if (item is Map<String, dynamic>) {
      var nameField = item['tray_id'];

      if (nameField != null && nameField is String) {
        String itemName = nameField.toLowerCase();

        if (itemName.contains(searchQuery)) {
          result.add(item);
        }
      }
    }
  }

  return result.isNotEmpty ? result : records;
}

dynamic booltruecondition() {
  return true;
}
