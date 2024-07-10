import 'package:flutter/material.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

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
}
