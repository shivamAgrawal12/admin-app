import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start admin api Group Code

class AdminApiGroup {
  static String getBaseUrl() => 'https://robotmanagerv1.qikpod.com:8981';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
    'Content-Type': 'application/json',
    'accept': 'application/json',
  };
  static VerifyRobotIdCall verifyRobotIdCall = VerifyRobotIdCall();
  static GenerateOtpCall generateOtpCall = GenerateOtpCall();
  static ValidateOtpCall validateOtpCall = ValidateOtpCall();
  static SlotInfoCall slotInfoCall = SlotInfoCall();
  static TrayInfoCall trayInfoCall = TrayInfoCall();
  static PatchTrayIdInSlotCall patchTrayIdInSlotCall = PatchTrayIdInSlotCall();
  static AddNewTrayCall addNewTrayCall = AddNewTrayCall();
  static DeleteTrayCall deleteTrayCall = DeleteTrayCall();
  static SlotInfoByTrayIdCall slotInfoByTrayIdCall = SlotInfoByTrayIdCall();
  static PostTaskCall postTaskCall = PostTaskCall();
  static TaskDetailsCall taskDetailsCall = TaskDetailsCall();
}

class VerifyRobotIdCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'verify robot id',
      apiUrl: '$baseUrl/robotmanager/robots/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'robot_id': robotId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  String? robotid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].robot_id''',
      ));
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
}

class GenerateOtpCall {
  Future<ApiCallResponse> call({
    String? userPhone = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'generate otp',
      apiUrl: '$baseUrl/auth/generate_mock_otp/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'user_phone': userPhone,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
}

class ValidateOtpCall {
  Future<ApiCallResponse> call({
    String? userPhone = '',
    String? otpText = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'validate otp',
      apiUrl: '$baseUrl/auth/validate_mock_otp/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'user_phone': userPhone,
        'otp_text': otpText,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  String? accesstoken(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.access_token''',
      ));
}

class SlotInfoCall {
  Future<ApiCallResponse> call({
    String? slotId = '',
    String? robotId = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'slot info',
      apiUrl: '$baseUrl/robotmanager/slots/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'slot_id': slotId,
        'robot_id': robotId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  int? depth(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].depth''',
      ));
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].type''',
      ));
  int? rack(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].rack''',
      ));
  int? row(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].row''',
      ));
  int? slot(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].slot''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].status''',
      ));
  String? slotid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].slot_id''',
      ));
}

class TrayInfoCall {
  Future<ApiCallResponse> call({
    String? trayId = '',
    String? robotId = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'tray info',
      apiUrl: '$baseUrl/robotmanager/trays/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'tray_id': trayId,
        'robot_id': robotId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? traysize(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].tray_size''',
      ));
  String? traystatus(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].tray_status''',
      ));
  String? trayid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].tray_id''',
      ));
  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
}

class PatchTrayIdInSlotCall {
  Future<ApiCallResponse> call({
    String? trayId = '',
    int? id,
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tray_id": "$trayId"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'patch tray id in slot',
      apiUrl: '$baseUrl/robotmanager/slots/$id',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.status''',
      ));
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
}

class AddNewTrayCall {
  Future<ApiCallResponse> call({
    String? trayId = '',
    String? robotId = '',
    String? trayStatus = '',
    String? traySize = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    final ffApiRequestBody = '''
{
  "tray_id": "$trayId",
  "robot_id": "$robotId",
  "tray_status": "$trayStatus",
  "tray_size": "$traySize"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'add new tray',
      apiUrl: '$baseUrl/robotmanager/trays/',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
}

class DeleteTrayCall {
  Future<ApiCallResponse> call({
    int? id,
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'delete tray',
      apiUrl: '$baseUrl/robotmanager/trays/$id',
      callType: ApiCallType.DELETE,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class SlotInfoByTrayIdCall {
  Future<ApiCallResponse> call({
    String? trayId = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'slot info by tray id',
      apiUrl: '$baseUrl/robotmanager/slots/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'tray_id': trayId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].id''',
      ));
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  String? slotid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].slot_id''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].status''',
      ));
}

class PostTaskCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? trayId = '',
    bool? directPickable = true,
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'post task',
      apiUrl:
          '$baseUrl/robotmanager/task/?robot_id=$robotId&tray_id=$trayId&direct_pickable=$directPickable',
      callType: ApiCallType.POST,
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
  }

  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].id''',
      ));
}

class TaskDetailsCall {
  Future<ApiCallResponse> call({
    int? recordId,
    String? status = '',
    String? robotId = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl();

    return ApiManager.instance.makeApiCall(
      callName: 'task details',
      apiUrl: '$baseUrl/robotmanager/task/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'record_id': recordId,
        'status': status,
        'robot_id': robotId,
      },
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? trayslotid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].tray_slot_id''',
      ));
  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].status''',
      ));
}

/// End admin api Group Code

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
