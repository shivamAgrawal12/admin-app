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
