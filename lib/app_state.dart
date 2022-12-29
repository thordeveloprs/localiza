import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';
import 'dart:convert';

class FFAppState extends ChangeNotifier {
  static final FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal() {
    initializePersistedState();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  String _logoURL = '';
  String get logoURL => _logoURL;
  set logoURL(String _value) {
    _logoURL = _value;
  }

  Color _primaryBtnColor = Color(4278190080);
  Color get primaryBtnColor => _primaryBtnColor;
  set primaryBtnColor(Color _value) {
    _primaryBtnColor = _value;
  }

  bool _isloading = false;
  bool get isloading => _isloading;
  set isloading(bool _value) {
    _isloading = _value;
  }

  List<String> _imgPath = [
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSGQOC6WeHdXKb2x66cUg195RTm_r75v5ViVQ&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRPc6BlOGvwEiMZI7Xvod6wqFr_FfohHi-y2Q&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQWPiGpN84DQplnQHGb9o83utiskqe53eIvRw&usqp=CAU',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSuDqdDU_pjVKO7MXwoN95OCidiVope2zJffg&usqp=CAU'
  ];
  List<String> get imgPath => _imgPath;
  set imgPath(List<String> _value) {
    _imgPath = _value;
  }

  void addToImgPath(String _value) {
    _imgPath.add(_value);
  }

  void removeFromImgPath(String _value) {
    _imgPath.remove(_value);
  }

  String _key = 'starbucks';
  String get key => _key;
  set key(String _value) {
    _key = _value;
  }

  String _name = '';
  String get name => _name;
  set name(String _value) {
    _name = _value;
  }

  String _address = '';
  String get address => _address;
  set address(String _value) {
    _address = _value;
  }

  String _locationWithin = '';
  String get locationWithin => _locationWithin;
  set locationWithin(String _value) {
    _locationWithin = _value;
  }

  String _hours = '';
  String get hours => _hours;
  set hours(String _value) {
    _hours = _value;
  }

  String _contact = '';
  String get contact => _contact;
  set contact(String _value) {
    _contact = _value;
  }

  String _webSite = '';
  String get webSite => _webSite;
  set webSite(String _value) {
    _webSite = _value;
  }

  LatLng? _mapLocation;
  LatLng? get mapLocation => _mapLocation;
  set mapLocation(LatLng? _value) {
    _mapLocation = _value;
  }

  String _timePicker = '';
  String get timePicker => _timePicker;
  set timePicker(String _value) {
    _timePicker = _value;
  }

  bool _isSunday = false;
  bool get isSunday => _isSunday;
  set isSunday(bool _value) {
    _isSunday = _value;
  }

  bool _isMonday = false;
  bool get isMonday => _isMonday;
  set isMonday(bool _value) {
    _isMonday = _value;
  }

  bool _isTuesday = false;
  bool get isTuesday => _isTuesday;
  set isTuesday(bool _value) {
    _isTuesday = _value;
  }

  bool _isWednesday = false;
  bool get isWednesday => _isWednesday;
  set isWednesday(bool _value) {
    _isWednesday = _value;
  }

  bool _isThursday = false;
  bool get isThursday => _isThursday;
  set isThursday(bool _value) {
    _isThursday = _value;
  }

  bool _isFriday = false;
  bool get isFriday => _isFriday;
  set isFriday(bool _value) {
    _isFriday = _value;
  }

  bool _isSaturday = false;
  bool get isSaturday => _isSaturday;
  set isSaturday(bool _value) {
    _isSaturday = _value;
  }

  List<String> _dayTimeList = [
    'http://cdn.onlinewebfonts.com/svg/img_255487.png'
  ];
  List<String> get dayTimeList => _dayTimeList;
  set dayTimeList(List<String> _value) {
    _dayTimeList = _value;
  }

  void addToDayTimeList(String _value) {
    _dayTimeList.add(_value);
  }

  void removeFromDayTimeList(String _value) {
    _dayTimeList.remove(_value);
  }

  bool _isOpen24Hours = false;
  bool get isOpen24Hours => _isOpen24Hours;
  set isOpen24Hours(bool _value) {
    _isOpen24Hours = _value;
  }

  bool _isClosed = false;
  bool get isClosed => _isClosed;
  set isClosed(bool _value) {
    _isClosed = _value;
  }

  String _chk = 'checking';
  String get chk => _chk;
  set chk(String _value) {
    _chk = _value;
  }

  List<dynamic> _dayTimeList1 = [
    jsonDecode('{\"openTime\":\"11:00 PM\",\"endTime\":\"11:00 PM\"}')
  ];
  List<dynamic> get dayTimeList1 => _dayTimeList1;
  set dayTimeList1(List<dynamic> _value) {
    _dayTimeList1 = _value;
  }

  void addToDayTimeList1(dynamic _value) {
    _dayTimeList1.add(_value);
  }

  void removeFromDayTimeList1(dynamic _value) {
    _dayTimeList1.remove(_value);
  }

  int _indiii = 0;
  int get indiii => _indiii;
  set indiii(int _value) {
    _indiii = _value;
  }

  List<dynamic> _emptyJsonList = [
    jsonDecode(
        '{\"openTime\":\"11:00 PM\",\"endTime\":\"11:00 PM\",\"img\":\"http://cdn.onlinewebfonts.com/svg/img_255487.png\"}')
  ];
  List<dynamic> get emptyJsonList => _emptyJsonList;
  set emptyJsonList(List<dynamic> _value) {
    _emptyJsonList = _value;
  }

  void addToEmptyJsonList(dynamic _value) {
    _emptyJsonList.add(_value);
  }

  void removeFromEmptyJsonList(dynamic _value) {
    _emptyJsonList.remove(_value);
  }

  List<dynamic> _timeResult = [];
  List<dynamic> get timeResult => _timeResult;
  set timeResult(List<dynamic> _value) {
    _timeResult = _value;
  }

  void addToTimeResult(dynamic _value) {
    _timeResult.add(_value);
  }

  void removeFromTimeResult(dynamic _value) {
    _timeResult.remove(_value);
  }

  List<String> _daysList = ['sun', 'mon', 'tue', 'wed', 'thu', 'fri', 'sat'];
  List<String> get daysList => _daysList;
  set daysList(List<String> _value) {
    _daysList = _value;
  }

  void addToDaysList(String _value) {
    _daysList.add(_value);
  }

  void removeFromDaysList(String _value) {
    _daysList.remove(_value);
  }

  dynamic _workingJson;
  dynamic get workingJson => _workingJson;
  set workingJson(dynamic _value) {
    _workingJson = _value;
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

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
