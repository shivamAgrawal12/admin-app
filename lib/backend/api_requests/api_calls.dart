import 'dart:convert';

import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

/// Start admin api Group Code

class AdminApiGroup {
  static String getBaseUrl({
    String? apiURL = '',
  }) =>
      'https://robotmanagerv1test.qikpod.com:8981';
  static Map<String, String> headers = {
    'Authorization':
        'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
    'Content-Type': 'application/json',
    'accept': 'application/json',
  };
  static VerifyRobotIdCall verifyRobotIdCall = VerifyRobotIdCall();
  static ShuttleDetailsCall shuttleDetailsCall = ShuttleDetailsCall();
  static GenerateOtpCall generateOtpCall = GenerateOtpCall();
  static ValidateOtpCall validateOtpCall = ValidateOtpCall();
  static SlotInfoCall slotInfoCall = SlotInfoCall();
  static TrayInfoCall trayInfoCall = TrayInfoCall();
  static TrayInfoWithoutTypeCall trayInfoWithoutTypeCall =
      TrayInfoWithoutTypeCall();
  static PatchTrayIdInSlotCall patchTrayIdInSlotCall = PatchTrayIdInSlotCall();
  static AddNewTrayCall addNewTrayCall = AddNewTrayCall();
  static DeleteTrayCall deleteTrayCall = DeleteTrayCall();
  static SlotInfoByTrayIdCall slotInfoByTrayIdCall = SlotInfoByTrayIdCall();
  static SlotDetailByFriendlyNameCall slotDetailByFriendlyNameCall =
      SlotDetailByFriendlyNameCall();
  static PostTaskCall postTaskCall = PostTaskCall();
  static TaskDetailsCall taskDetailsCall = TaskDetailsCall();
  static ListOfTrayCall listOfTrayCall = ListOfTrayCall();
  static ListOfTrayWithoutTypeCall listOfTrayWithoutTypeCall =
      ListOfTrayWithoutTypeCall();
  static ListOfTrayRetrieveCall listOfTrayRetrieveCall =
      ListOfTrayRetrieveCall();
  static ListOfSlotCall listOfSlotCall = ListOfSlotCall();
  static TaskByStatusCall taskByStatusCall = TaskByStatusCall();
  static RegisterNewRobotCall registerNewRobotCall = RegisterNewRobotCall();
  static GetTaskCall getTaskCall = GetTaskCall();
  static TaskCompleteCall taskCompleteCall = TaskCompleteCall();
  static ChangeSlotTypeCall changeSlotTypeCall = ChangeSlotTypeCall();
  static PickingstationPatchCallCall pickingstationPatchCallCall =
      PickingstationPatchCallCall();
  static ChangeSlotTypeWithoutFriendlyNameCall
      changeSlotTypeWithoutFriendlyNameCall =
      ChangeSlotTypeWithoutFriendlyNameCall();
  static DirectPickableCall directPickableCall = DirectPickableCall();
  static AddShuttlesCall addShuttlesCall = AddShuttlesCall();
  static MappingTrayAsnShuttleCall mappingTrayAsnShuttleCall =
      MappingTrayAsnShuttleCall();
  static TaskByIdCall taskByIdCall = TaskByIdCall();
  static UplodeSlotCsvCall uplodeSlotCsvCall = UplodeSlotCsvCall();
  static UplodeTrayCsvCall uplodeTrayCsvCall = UplodeTrayCsvCall();
  static SpeedInShuttleCall speedInShuttleCall = SpeedInShuttleCall();
  static AddBufferInShutttleCall addBufferInShutttleCall =
      AddBufferInShutttleCall();
  static AddSpeedInShuttleCall addSpeedInShuttleCall = AddSpeedInShuttleCall();
  static BlockRackCall blockRackCall = BlockRackCall();
  static ChangeTheTypeOfSlotCall changeTheTypeOfSlotCall =
      ChangeTheTypeOfSlotCall();
  static CancelAllPendingCall cancelAllPendingCall = CancelAllPendingCall();
}

class VerifyRobotIdCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

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
  String? robotname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].robot_name''',
      ));
  int? maxrow(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].max_row''',
      ));
  int? maxrack(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].max_rack''',
      ));
  int? maxslot(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].max_slot''',
      ));
  int? maxdepth(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].max_depth''',
      ));
  String? status(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].status''',
      ));
}

class ShuttleDetailsCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'shuttle details',
      apiUrl: '$baseUrl/robotmanager/shuttles/',
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
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].id''',
      ));
  String? shuttlename(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].shuttle_id''',
      ));
  String? shuttlespead(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].speed''',
      ));
}

class GenerateOtpCall {
  Future<ApiCallResponse> call({
    String? userPhone = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

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
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

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
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

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
  String? trayid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].tray_id''',
      ));
  bool? directpickable(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.records[:].direct_pickable''',
      ));
  String? supporttype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].support_type''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].id''',
      ));
  String? friendlyname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].friendly_name''',
      ));
}

class TrayInfoCall {
  Future<ApiCallResponse> call({
    String? trayId = '',
    String? robotId = '',
    String? trayType = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

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
        'tray_type': trayType,
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
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].type''',
      ));
}

class TrayInfoWithoutTypeCall {
  Future<ApiCallResponse> call({
    String? trayId = '',
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'tray info  without type',
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
  String? type(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].type''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].id''',
      ));
}

class PatchTrayIdInSlotCall {
  Future<ApiCallResponse> call({
    int? id,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    const ffApiRequestBody = '''
{
  "tray_id":null
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
  String? message(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddNewTrayCall {
  Future<ApiCallResponse> call({
    String? trayId = '',
    String? robotId = '',
    String? trayType = '',
    int? trayHeight,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'add new tray',
      apiUrl:
          '$baseUrl/robotmanager/trays/?robot_id=$robotId&tray_type=$trayType&tray_id=$trayId&tray_height=$trayHeight',
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

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
}

class DeleteTrayCall {
  Future<ApiCallResponse> call({
    int? id,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

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
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

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

class SlotDetailByFriendlyNameCall {
  Future<ApiCallResponse> call({
    String? slotFriendlyName = '',
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'slot detail by friendly name',
      apiUrl: '$baseUrl/robotmanager/slots/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'slot_friendly_name': slotFriendlyName,
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
  String? slottype(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].type''',
      ));
}

class PostTaskCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? trayId = '',
    String? taskType = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'post task',
      apiUrl:
          '$baseUrl/robotmanager/task/?robot_id=$robotId&tray_id=$trayId&task_type=$taskType',
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
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

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

class ListOfTrayCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? trayType = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'list of tray',
      apiUrl: '$baseUrl/robotmanager/trays/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'robot_id': robotId,
        'tray_type': trayType,
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
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ListOfTrayWithoutTypeCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'list of tray without type',
      apiUrl: '$baseUrl/robotmanager/trays/',
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
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ListOfTrayRetrieveCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? status = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'list of tray retrieve',
      apiUrl: '$baseUrl/robotmanager/trays/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'robot_id': robotId,
        'status': status,
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
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class ListOfSlotCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'list of slot',
      apiUrl: '$baseUrl/robotmanager/slots/',
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
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class TaskByStatusCall {
  Future<ApiCallResponse> call({
    String? taskStatus = '',
    String? robotId = '',
    String? taskType = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'task by status',
      apiUrl: '$baseUrl/robotmanager/task/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'robot_id': robotId,
        'task_status': taskStatus,
        'task_type': taskType,
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
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class RegisterNewRobotCall {
  Future<ApiCallResponse> call({
    String? robotName = '',
    String? robotId = '',
    String? status = '',
    int? maxRow,
    int? maxRack,
    int? maxSlot,
    int? maxDepth,
    String? slotType = '',
    int? slotHeight,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "robot_name": "$robotName",
  "robot_id": "$robotId",
  "status": "$status",
  "max_row": $maxRow,
  "max_rack": $maxRack,
  "max_slot": $maxSlot,
  "max_depth": $maxDepth,
  "slot_height": $slotHeight
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'register new robot',
      apiUrl: '$baseUrl/robotmanager/robots/?slot_type=$slotType',
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

  String? robotid(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].robot_id''',
      ));
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
}

class GetTaskCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? taskType = '',
    String? taskStatus = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'get task',
      apiUrl: '$baseUrl/robotmanager/task/',
      callType: ApiCallType.GET,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
      },
      params: {
        'robot_id': robotId,
        'task_type': taskType,
        'task_status': taskStatus,
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
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  int? id(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.records[:].id''',
      ));
  int? count(dynamic response) => castToType<int>(getJsonField(
        response,
        r'''$.count''',
      ));
}

class TaskCompleteCall {
  Future<ApiCallResponse> call({
    String? taskId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'task complete',
      apiUrl: '$baseUrl/robotmanager/task/pickup_completed/$taskId',
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
  }

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ChangeSlotTypeCall {
  Future<ApiCallResponse> call({
    int? id,
    String? type = '',
    String? friendlyName = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "type": "$type",
  "friendly_name": "$friendlyName"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'change slot type',
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

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class PickingstationPatchCallCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? slotId = '',
    String? friendlyName = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'pickingstation patch call',
      apiUrl:
          '$baseUrl/robotmanager/slots/picking_station/?robot_id=$robotId&slot_id=$slotId&friendly_name=$friendlyName',
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
  }

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class ChangeSlotTypeWithoutFriendlyNameCall {
  Future<ApiCallResponse> call({
    int? id,
    String? type = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "type": "$type"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'change slot type without friendly name',
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

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
}

class DirectPickableCall {
  Future<ApiCallResponse> call({
    int? id,
    bool? directPickable,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "direct_pickable": $directPickable
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'direct pickable',
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

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddShuttlesCall {
  Future<ApiCallResponse> call({
    int? currentSlot,
    int? currentRack,
    int? currentRow,
    String? shuttleIpAddress = '',
    String? shuttleId = '',
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "shuttle_id": "$shuttleId",
  "shuttle_ip_address": "$shuttleIpAddress",
  "current_row":$currentRow,
  "current_rack": $currentRack,
  "current_slot": $currentSlot
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'add shuttles',
      apiUrl: '$baseUrl/robotmanager/shuttles/?robot_id=$robotId',
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

class MappingTrayAsnShuttleCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? trayId = '',
    String? slotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'mapping tray asn shuttle',
      apiUrl:
          '$baseUrl/robotmanager/trays/mapping?robot_id=$robotId&tray_id=$trayId&slot_id=$slotId&robot=false',
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
}

class TaskByIdCall {
  Future<ApiCallResponse> call({
    int? recordId,
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'task by id',
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

  String? slotfriendlyname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].slot_friendly_name''',
      ));
  String? friendlyname(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.records[:].friendly_name''',
      ));
  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
}

class UplodeSlotCsvCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    FFUploadedFile? inFile,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'uplode slot csv',
      apiUrl: '$baseUrl/robotmanager/slots/upload_csv/?robot_id=$robotId',
      callType: ApiCallType.PATCH,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'in_file': inFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail[:].msg''',
      ));
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.statusbool''',
      );
}

class UplodeTrayCsvCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    FFUploadedFile? inFile,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'uplode tray csv',
      apiUrl: '$baseUrl/robotmanager/trays/upload?robot_id=$robotId',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJleHAiOjE4NzA4Mzc1NjR9.E5mqlPukF9nZms9ZKQqEhsc_gD_lV1KdicbsAfLgLMA',
        'Content-Type': 'application/json',
        'accept': 'application/json',
        'Content-Type': 'multipart/form-data',
      },
      params: {
        'in_file': inFile,
      },
      bodyType: BodyType.MULTIPART,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      isStreamingApi: false,
      alwaysAllowBody: false,
    );
  }

  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.detail[:].msg''',
      ));
  dynamic status(dynamic response) => getJsonField(
        response,
        r'''$.statusbool''',
      );
}

class SpeedInShuttleCall {
  Future<ApiCallResponse> call({
    int? id,
    String? speed = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "speed": "$speed"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'speed in shuttle',
      apiUrl: '$baseUrl/robotmanager/shuttles/$id',
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

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  String? msg(dynamic response) => castToType<String>(getJsonField(
        response,
        r'''$.message''',
      ));
}

class AddBufferInShutttleCall {
  Future<ApiCallResponse> call({
    int? id,
    String? trayType = '',
    int? highDdRetrieve,
    int? highDdStore,
    int? highSdRetrieve,
    int? highSdStore,
    int? mediumDdRetrieve,
    int? mediumDdStore,
    int? mediumSdRetrieve,
    int? mediumSdStore,
    int? lowSdStore,
    int? lowSdRetrieve,
    int? lowDdStore,
    int? lowDdRetrieve,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "high": {
    "sd_store": $highSdStore,
    "sd_retrieve": $highSdRetrieve,
    "dd_store": $highDdStore,
    "dd_retrieve": $highDdRetrieve
  },
  "medium": {
    "sd_store": $mediumDdStore,
    "sd_retrieve": $mediumSdRetrieve,
    "dd_store": $mediumDdStore,
    "dd_retrieve": $mediumDdRetrieve
  },
  "low": {
    "sd_store": $lowSdStore,
    "sd_retrieve": $lowSdRetrieve,
    "dd_store": $lowDdStore,
    "dd_retrieve": $lowDdRetrieve
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'add buffer in shutttle',
      apiUrl:
          '$baseUrl/robotmanager/shuttles/add_buffer$id?tray_type=$trayType',
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
}

class AddSpeedInShuttleCall {
  Future<ApiCallResponse> call({
    String? trayType = '',
    int? id,
    int? lowDdStore,
    int? mediumDdStore,
    int? highDdStore,
    int? lowSdRetrieve,
    int? mediumSdRetrieve,
    int? highSdRetrieve,
    int? lowSdStore,
    int? mediumSdStore,
    int? highSdStore,
    int? lowDdRetrieve,
    int? mediumDdRetrieve,
    int? highDdRetrieve,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    final ffApiRequestBody = '''
{
  "high": {
    "sd_store": <hight_sd_store>,
    "sd_retrieve": $highSdRetrieve,
    "dd_store": $highDdStore,
    "dd_retrieve": $highDdRetrieve
  },
  "medium": {
    "sd_store": $mediumSdStore,
    "sd_retrieve": $mediumSdRetrieve,
    "dd_store": $mediumDdStore,
    "dd_retrieve": $mediumDdRetrieve
  },
  "low": {
    "sd_store": $lowSdStore,
    "sd_retrieve":$lowSdRetrieve,
    "dd_store": $lowDdStore,
    "dd_retrieve": $lowDdRetrieve
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'add speed in shuttle',
      apiUrl:
          '$baseUrl/robotmanager/shuttles/add_speed$id?tray_type=$trayType',
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
}

class BlockRackCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    int? rack,
    String? type = '',
    int? row,
    int? slot,
    int? depth,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'block rack',
      apiUrl:
          '$baseUrl/robotmanager/slots/type/?robot_id=$robotId&type=$type&row=$row&rack=$rack&slot=$slot&depth=$depth',
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
  }

  bool? statusbool(dynamic response) => castToType<bool>(getJsonField(
        response,
        r'''$.statusbool''',
      ));
  List? records(dynamic response) => getJsonField(
        response,
        r'''$.records''',
        true,
      ) as List?;
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.detail[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class ChangeTheTypeOfSlotCall {
  Future<ApiCallResponse> call({
    String? supportType = '',
    String? robotId = '',
    int? rack,
    int? row,
    int? slot,
    int? depth,
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'Change the type of slot',
      apiUrl:
          '$baseUrl/robotmanager/slots/support_type/?robot_id=$robotId&support_type=$supportType&row=$row&rack=$rack&slot=$slot&depth=$depth',
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
  List<String>? msg(dynamic response) => (getJsonField(
        response,
        r'''$.detail[:].msg''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class CancelAllPendingCall {
  Future<ApiCallResponse> call({
    String? robotId = '',
    String? apiURL = '',
  }) async {
    final baseUrl = AdminApiGroup.getBaseUrl(
      apiURL: apiURL,
    );

    return ApiManager.instance.makeApiCall(
      callName: 'cancel all pending',
      apiUrl:
          '$baseUrl/robotmanager/task/cancel_pending_task/?robot_id=$robotId',
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
  }
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
