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
  if (records == null || records.isEmpty) {
    return [];
  }

  if (searchdata == null || searchdata.isEmpty) {
    return records.where((item) => item['type'] == 'picking_station').toList();
  }

  String searchQuery = searchdata.toLowerCase();
  List<dynamic> result = [];

  for (var item in records) {
    if (item is Map<String, dynamic>) {
      var nameField = item['friendly_name'];
      var typeField = item['type'];

      if (typeField != null && typeField == 'picking_station') {
        if (nameField != null && nameField is String) {
          String itemName = nameField.toLowerCase();

          if (itemName.contains(searchQuery)) {
            result.add(item);
          }
        }
      }
    }
  }

  return result;
}

dynamic searchallslot(
  List<dynamic>? records,
  String? searchdata,
) {
  if (records == null || records.isEmpty) {
    return [];
  }

  if (searchdata == null || searchdata.isEmpty) {
    return records;
  }

  String searchQuery = searchdata.toLowerCase();
  List<dynamic> result = [];

  for (var item in records) {
    if (item is Map<String, dynamic>) {
      var slotid = item['slot_id'];
      var trayid = item['tray_id'];
      var directpickable = item['direct_pickable'];
      var type = item['type'];
      var friendlyname = item['friendly_name'];
      var support_type = item['support_type'];
      var createdat = item['created_at'];

      if ((slotid != null &&
              slotid is String &&
              slotid.toLowerCase().contains(searchQuery)) ||
          (trayid != null &&
              trayid is String &&
              trayid.toLowerCase().contains(searchQuery)) ||
          (directpickable != null &&
              directpickable is String &&
              directpickable.toLowerCase().contains(searchQuery)) ||
          (type != null &&
              type is String &&
              type.toLowerCase().contains(searchQuery)) ||
          (friendlyname != null &&
              friendlyname is String &&
              friendlyname.toLowerCase().contains(searchQuery)) ||
          (support_type != null &&
              support_type is String &&
              support_type.toLowerCase().contains(searchQuery)) ||
          (createdat != null &&
              createdat is String &&
              createdat.toLowerCase().contains(searchQuery))) {
        result.add(item);
      }
    }
  }

  return result;
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
  // If records is null or empty, return an empty list
  if (records == null || records.isEmpty) {
    return [];
  }

  // If searchdata is null or empty, return all records
  if (searchdata == null || searchdata.isEmpty) {
    return records;
  }

  String searchQuery = searchdata.toLowerCase();
  List<dynamic> result = [];

  for (var item in records) {
    if (item is Map<String, dynamic>) {
      var nameField = item['tray_id'];

      if (nameField != null && nameField is String) {
        String itemName = nameField.toLowerCase();

        // Check if the itemName starts with the searchQuery
        if (itemName.startsWith(searchQuery)) {
          result.add(item);
        }
      }
    }
  }

  return result;
}

dynamic booltruecondition() {
  return true;
}

int stringtoint(String stringvalue) {
  return int.parse(stringvalue);
}

String inttostring(int intvalue) {
  return intvalue.toString();
}
