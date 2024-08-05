// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:admin_app_v1/backend/api_requests/api_manager.dart';
import '/popup/msg_mapping/msg_mapping_widget.dart';
import '/popup/successfull/successfull_widget.dart';
import 'dart:io';

// Correct imports for ApiManager, ApiCallType, and BodyType
import '/backend/api_requests/api_calls.dart';

Future<void> selectslot(
  BuildContext context,
  String robotId,
  String supportType,
  int? slot,
  int? row,
  int? rack,
  int? depth,
) async {
  // Base URL
  final baseUrl = 'https://robotmanagerv1.qikpod.com:8981';

  // Create a map to hold query parameters
  final queryParams = <String, String>{};

  // Add non-null parameters to the query map
  if (robotId.isNotEmpty) queryParams['robot_id'] = robotId;
  if (supportType.isNotEmpty) queryParams['support_type'] = supportType;
  if (slot != null) queryParams['slot'] = slot.toString();
  if (row != null) queryParams['row'] = row.toString();
  if (rack != null) queryParams['rack'] = rack.toString();
  if (depth != null) queryParams['depth'] = depth.toString();

  // Construct the API URL with query parameters
  final apiUrl = Uri(
    scheme: 'https',
    host: baseUrl
        .replaceAll('https://', '')
        .replaceAll(':8981', ''), // Remove scheme and port if present
    port: 8981,
    path: '/robotmanager/slots/support_type/',
    queryParameters: queryParams.isNotEmpty ? queryParams : null,
  ).toString();

  // Make the API call
  final response = await ApiManager.instance.makeApiCall(
    callName: 'block rack',
    apiUrl: apiUrl,
    callType: ApiCallType.PATCH,
    headers: {
      'Authorization':
          'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
      'Content-Type': 'application/json',
      'accept': 'application/json',
    },
    params: {},
    bodyType: BodyType.NONE,
    returnBody: true,
    encodeBodyUtf8: false,
    decodeUtf8: false,
    cache: false,
    isStreamingApi: false,
    alwaysAllowBody: false,
  );

  // Print the raw response for debugging
  print('Raw Response: ${response.jsonBody}');

  // Extract and return the status
  final status =
      castToType<bool>(getJsonField(response.jsonBody, r'''$.statusbool'''));
  print('Status: $status');

  // Extract message for the bottom sheet dialog
  final message = getJsonField(response.jsonBody, r'''$.message''').toString();

  if (status == true) {
    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.viewInsetsOf(context),
          child: SuccessfullWidget(),
        );
      },
    );
  } else {
    await showModalBottomSheet(
      isScrollControlled: true,
      backgroundColor: Colors.transparent,
      enableDrag: false,
      context: context,
      builder: (context) {
        return Padding(
          padding: MediaQuery.viewInsetsOf(context),
          child: MsgMappingWidget(
            msg: message,
          ),
        );
      },
    );
  }
}
