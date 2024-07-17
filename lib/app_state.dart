import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:csv/csv.dart';
import 'package:synchronized/synchronized.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    secureStorage = const FlutterSecureStorage();
    await _safeInitAsync(() async {
      _hideslot = await secureStorage.getInt('ff_hideslot') ?? _hideslot;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late FlutterSecureStorage secureStorage;

  String _robotid = '';
  String get robotid => _robotid;
  set robotid(String value) {
    _robotid = value;
  }

  String _slotid = '';
  String get slotid => _slotid;
  set slotid(String value) {
    _slotid = value;
  }

  String _trayid = '';
  String get trayid => _trayid;
  set trayid(String value) {
    _trayid = value;
  }

  int _slotrecid = 0;
  int get slotrecid => _slotrecid;
  set slotrecid(int value) {
    _slotrecid = value;
  }

  int _trayrecid = 0;
  int get trayrecid => _trayrecid;
  set trayrecid(int value) {
    _trayrecid = value;
  }

  int _taskrecid = 0;
  int get taskrecid => _taskrecid;
  set taskrecid(int value) {
    _taskrecid = value;
  }

  int _hideslot = 0;
  int get hideslot => _hideslot;
  set hideslot(int value) {
    _hideslot = value;
    secureStorage.setInt('ff_hideslot', value);
  }

  void deleteHideslot() {
    secureStorage.delete(key: 'ff_hideslot');
  }

  String _friendlyname = '';
  String get friendlyname => _friendlyname;
  set friendlyname(String value) {
    _friendlyname = value;
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

extension FlutterSecureStorageExtensions on FlutterSecureStorage {
  static final _lock = Lock();

  Future<void> writeSync({required String key, String? value}) async =>
      await _lock.synchronized(() async {
        await write(key: key, value: value);
      });

  void remove(String key) => delete(key: key);

  Future<String?> getString(String key) async => await read(key: key);
  Future<void> setString(String key, String value) async =>
      await writeSync(key: key, value: value);

  Future<bool?> getBool(String key) async => (await read(key: key)) == 'true';
  Future<void> setBool(String key, bool value) async =>
      await writeSync(key: key, value: value.toString());

  Future<int?> getInt(String key) async =>
      int.tryParse(await read(key: key) ?? '');
  Future<void> setInt(String key, int value) async =>
      await writeSync(key: key, value: value.toString());

  Future<double?> getDouble(String key) async =>
      double.tryParse(await read(key: key) ?? '');
  Future<void> setDouble(String key, double value) async =>
      await writeSync(key: key, value: value.toString());

  Future<List<String>?> getStringList(String key) async =>
      await read(key: key).then((result) {
        if (result == null || result.isEmpty) {
          return null;
        }
        return const CsvToListConverter()
            .convert(result)
            .first
            .map((e) => e.toString())
            .toList();
      });
  Future<void> setStringList(String key, List<String> value) async =>
      await writeSync(key: key, value: const ListToCsvConverter().convert([value]));
}
