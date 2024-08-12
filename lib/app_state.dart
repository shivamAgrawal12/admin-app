import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

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
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      _robotid = prefs.getString('ff_robotid') ?? _robotid;
    });
    _safeInit(() {
      _hideslot = prefs.getInt('ff_hideslot') ?? _hideslot;
    });
    _safeInit(() {
      _shuttles = prefs.getInt('ff_shuttles') ?? _shuttles;
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _robotid = '';
  String get robotid => _robotid;
  set robotid(String value) {
    _robotid = value;
    prefs.setString('ff_robotid', value);
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

  int _hideslot = 0;
  int get hideslot => _hideslot;
  set hideslot(int value) {
    _hideslot = value;
    prefs.setInt('ff_hideslot', value);
  }

  String _friendlyname = '';
  String get friendlyname => _friendlyname;
  set friendlyname(String value) {
    _friendlyname = value;
  }

  String _homeslotid = '';
  String get homeslotid => _homeslotid;
  set homeslotid(String value) {
    _homeslotid = value;
  }

  int _shuttles = 0;
  int get shuttles => _shuttles;
  set shuttles(int value) {
    _shuttles = value;
    prefs.setInt('ff_shuttles', value);
  }

  String _scannerpage = '';
  String get scannerpage => _scannerpage;
  set scannerpage(String value) {
    _scannerpage = value;
  }

  String _rothpage = '';
  String get rothpage => _rothpage;
  set rothpage(String value) {
    _rothpage = value;
  }

  int _trayqrscan = 0;
  int get trayqrscan => _trayqrscan;
  set trayqrscan(int value) {
    _trayqrscan = value;
  }

  String _apimsg = '';
  String get apimsg => _apimsg;
  set apimsg(String value) {
    _apimsg = value;
  }

  bool _connected = false;
  bool get connected => _connected;
  set connected(bool value) {
    _connected = value;
  }

  String _taskrecid = '';
  String get taskrecid => _taskrecid;
  set taskrecid(String value) {
    _taskrecid = value;
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
