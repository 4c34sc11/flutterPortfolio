import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  String _currentTab = 'aboutTab';
  String get currentTab => _currentTab;
  set currentTab(String _value) {
    _currentTab = _value;
  }

  bool _aboutButtonState = false;
  bool get aboutButtonState => _aboutButtonState;
  set aboutButtonState(bool _value) {
    _aboutButtonState = _value;
  }

  bool _cvButtonState = false;
  bool get cvButtonState => _cvButtonState;
  set cvButtonState(bool _value) {
    _cvButtonState = _value;
  }

  bool _projectsButtonState = false;
  bool get projectsButtonState => _projectsButtonState;
  set projectsButtonState(bool _value) {
    _projectsButtonState = _value;
  }

  bool _contactButtonState = false;
  bool get contactButtonState => _contactButtonState;
  set contactButtonState(bool _value) {
    _contactButtonState = _value;
  }

  List<String> _imgListAppointmentApp = ['https://picsum.photos/seed/213/600'];
  List<String> get imgListAppointmentApp => _imgListAppointmentApp;
  set imgListAppointmentApp(List<String> _value) {
    _imgListAppointmentApp = _value;
  }

  void addToImgListAppointmentApp(String _value) {
    _imgListAppointmentApp.add(_value);
  }

  void removeFromImgListAppointmentApp(String _value) {
    _imgListAppointmentApp.remove(_value);
  }

  void removeAtIndexFromImgListAppointmentApp(int _index) {
    _imgListAppointmentApp.removeAt(_index);
  }

  void updateImgListAppointmentAppAtIndex(
    int _index,
    String Function(String) updateFn,
  ) {
    _imgListAppointmentApp[_index] = updateFn(_imgListAppointmentApp[_index]);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
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
