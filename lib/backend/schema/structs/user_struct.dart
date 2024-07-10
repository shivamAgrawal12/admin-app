// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UserStruct extends BaseStruct {
  UserStruct({
    String? uid,
    String? displayName,
    String? createTime,
    int? userid,
    String? acccesstoken,
    String? location,
    int? orderid,
    int? customerphonenumber,
    int? storeid,
    String? storename,
  })  : _uid = uid,
        _displayName = displayName,
        _createTime = createTime,
        _userid = userid,
        _acccesstoken = acccesstoken,
        _location = location,
        _orderid = orderid,
        _customerphonenumber = customerphonenumber,
        _storeid = storeid,
        _storename = storename;

  // "uid" field.
  String? _uid;
  String get uid => _uid ?? '';
  set uid(String? val) => _uid = val;

  bool hasUid() => _uid != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  set displayName(String? val) => _displayName = val;

  bool hasDisplayName() => _displayName != null;

  // "create_time" field.
  String? _createTime;
  String get createTime => _createTime ?? '';
  set createTime(String? val) => _createTime = val;

  bool hasCreateTime() => _createTime != null;

  // "userid" field.
  int? _userid;
  int get userid => _userid ?? 0;
  set userid(int? val) => _userid = val;

  void incrementUserid(int amount) => userid = userid + amount;

  bool hasUserid() => _userid != null;

  // "acccesstoken" field.
  String? _acccesstoken;
  String get acccesstoken => _acccesstoken ?? '';
  set acccesstoken(String? val) => _acccesstoken = val;

  bool hasAcccesstoken() => _acccesstoken != null;

  // "location" field.
  String? _location;
  String get location => _location ?? '';
  set location(String? val) => _location = val;

  bool hasLocation() => _location != null;

  // "orderid" field.
  int? _orderid;
  int get orderid => _orderid ?? 0;
  set orderid(int? val) => _orderid = val;

  void incrementOrderid(int amount) => orderid = orderid + amount;

  bool hasOrderid() => _orderid != null;

  // "customerphonenumber" field.
  int? _customerphonenumber;
  int get customerphonenumber => _customerphonenumber ?? 0;
  set customerphonenumber(int? val) => _customerphonenumber = val;

  void incrementCustomerphonenumber(int amount) =>
      customerphonenumber = customerphonenumber + amount;

  bool hasCustomerphonenumber() => _customerphonenumber != null;

  // "storeid" field.
  int? _storeid;
  int get storeid => _storeid ?? 0;
  set storeid(int? val) => _storeid = val;

  void incrementStoreid(int amount) => storeid = storeid + amount;

  bool hasStoreid() => _storeid != null;

  // "storename" field.
  String? _storename;
  String get storename => _storename ?? '';
  set storename(String? val) => _storename = val;

  bool hasStorename() => _storename != null;

  static UserStruct fromMap(Map<String, dynamic> data) => UserStruct(
        uid: data['uid'] as String?,
        displayName: data['display_name'] as String?,
        createTime: data['create_time'] as String?,
        userid: castToType<int>(data['userid']),
        acccesstoken: data['acccesstoken'] as String?,
        location: data['location'] as String?,
        orderid: castToType<int>(data['orderid']),
        customerphonenumber: castToType<int>(data['customerphonenumber']),
        storeid: castToType<int>(data['storeid']),
        storename: data['storename'] as String?,
      );

  static UserStruct? maybeFromMap(dynamic data) =>
      data is Map ? UserStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'uid': _uid,
        'display_name': _displayName,
        'create_time': _createTime,
        'userid': _userid,
        'acccesstoken': _acccesstoken,
        'location': _location,
        'orderid': _orderid,
        'customerphonenumber': _customerphonenumber,
        'storeid': _storeid,
        'storename': _storename,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'uid': serializeParam(
          _uid,
          ParamType.String,
        ),
        'display_name': serializeParam(
          _displayName,
          ParamType.String,
        ),
        'create_time': serializeParam(
          _createTime,
          ParamType.String,
        ),
        'userid': serializeParam(
          _userid,
          ParamType.int,
        ),
        'acccesstoken': serializeParam(
          _acccesstoken,
          ParamType.String,
        ),
        'location': serializeParam(
          _location,
          ParamType.String,
        ),
        'orderid': serializeParam(
          _orderid,
          ParamType.int,
        ),
        'customerphonenumber': serializeParam(
          _customerphonenumber,
          ParamType.int,
        ),
        'storeid': serializeParam(
          _storeid,
          ParamType.int,
        ),
        'storename': serializeParam(
          _storename,
          ParamType.String,
        ),
      }.withoutNulls;

  static UserStruct fromSerializableMap(Map<String, dynamic> data) =>
      UserStruct(
        uid: deserializeParam(
          data['uid'],
          ParamType.String,
          false,
        ),
        displayName: deserializeParam(
          data['display_name'],
          ParamType.String,
          false,
        ),
        createTime: deserializeParam(
          data['create_time'],
          ParamType.String,
          false,
        ),
        userid: deserializeParam(
          data['userid'],
          ParamType.int,
          false,
        ),
        acccesstoken: deserializeParam(
          data['acccesstoken'],
          ParamType.String,
          false,
        ),
        location: deserializeParam(
          data['location'],
          ParamType.String,
          false,
        ),
        orderid: deserializeParam(
          data['orderid'],
          ParamType.int,
          false,
        ),
        customerphonenumber: deserializeParam(
          data['customerphonenumber'],
          ParamType.int,
          false,
        ),
        storeid: deserializeParam(
          data['storeid'],
          ParamType.int,
          false,
        ),
        storename: deserializeParam(
          data['storename'],
          ParamType.String,
          false,
        ),
      );

  @override
  String toString() => 'UserStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is UserStruct &&
        uid == other.uid &&
        displayName == other.displayName &&
        createTime == other.createTime &&
        userid == other.userid &&
        acccesstoken == other.acccesstoken &&
        location == other.location &&
        orderid == other.orderid &&
        customerphonenumber == other.customerphonenumber &&
        storeid == other.storeid &&
        storename == other.storename;
  }

  @override
  int get hashCode => const ListEquality().hash([
        uid,
        displayName,
        createTime,
        userid,
        acccesstoken,
        location,
        orderid,
        customerphonenumber,
        storeid,
        storename
      ]);
}

UserStruct createUserStruct({
  String? uid,
  String? displayName,
  String? createTime,
  int? userid,
  String? acccesstoken,
  String? location,
  int? orderid,
  int? customerphonenumber,
  int? storeid,
  String? storename,
}) =>
    UserStruct(
      uid: uid,
      displayName: displayName,
      createTime: createTime,
      userid: userid,
      acccesstoken: acccesstoken,
      location: location,
      orderid: orderid,
      customerphonenumber: customerphonenumber,
      storeid: storeid,
      storename: storename,
    );
