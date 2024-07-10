// ignore_for_file: unnecessary_getters_setters

import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ListStruct extends BaseStruct {
  ListStruct({
    List<int>? quantityresponse,
  }) : _quantityresponse = quantityresponse;

  // "quantityresponse" field.
  List<int>? _quantityresponse;
  List<int> get quantityresponse => _quantityresponse ?? const [];
  set quantityresponse(List<int>? val) => _quantityresponse = val;

  void updateQuantityresponse(Function(List<int>) updateFn) {
    updateFn(_quantityresponse ??= []);
  }

  bool hasQuantityresponse() => _quantityresponse != null;

  static ListStruct fromMap(Map<String, dynamic> data) => ListStruct(
        quantityresponse: getDataList(data['quantityresponse']),
      );

  static ListStruct? maybeFromMap(dynamic data) =>
      data is Map ? ListStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'quantityresponse': _quantityresponse,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'quantityresponse': serializeParam(
          _quantityresponse,
          ParamType.int,
          isList: true,
        ),
      }.withoutNulls;

  static ListStruct fromSerializableMap(Map<String, dynamic> data) =>
      ListStruct(
        quantityresponse: deserializeParam<int>(
          data['quantityresponse'],
          ParamType.int,
          true,
        ),
      );

  @override
  String toString() => 'ListStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is ListStruct &&
        listEquality.equals(quantityresponse, other.quantityresponse);
  }

  @override
  int get hashCode => const ListEquality().hash([quantityresponse]);
}

ListStruct createListStruct() => ListStruct();
