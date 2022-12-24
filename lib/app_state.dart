import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/lat_lng.dart';

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
    _name = prefs.getString('ff_name') ?? _name;
    _bgclr = _colorFromIntValue(prefs.getInt('ff_bgclr')) ?? _bgclr;
    _logoIcon = prefs.getString('ff_logoIcon') ?? _logoIcon;
    _appTitle = prefs.getString('ff_appTitle') ?? _appTitle;
    _appTitleClr =
        _colorFromIntValue(prefs.getInt('ff_appTitleClr')) ?? _appTitleClr;
    _appTagLine = prefs.getString('ff_appTagLine') ?? _appTagLine;
    _appTagLineClr =
        _colorFromIntValue(prefs.getInt('ff_appTagLineClr')) ?? _appTagLineClr;
    _primaryBtnClr =
        _colorFromIntValue(prefs.getInt('ff_primaryBtnClr')) ?? _primaryBtnClr;
    _secondaryBtnClr = _colorFromIntValue(prefs.getInt('ff_secondaryBtnClr')) ??
        _secondaryBtnClr;
    _darkBgPageClr =
        _colorFromIntValue(prefs.getInt('ff_darkBgPageClr')) ?? _darkBgPageClr;
    _liveDivisionClr = _colorFromIntValue(prefs.getInt('ff_liveDivisionClr')) ??
        _liveDivisionClr;
    _navigationIconClr =
        _colorFromIntValue(prefs.getInt('ff_navigationIconClr')) ??
            _navigationIconClr;
    _custonId = prefs.getInt('ff_custonId') ?? _custonId;
    _createdAt = prefs.containsKey('ff_createdAt')
        ? DateTime.fromMillisecondsSinceEpoch(prefs.getInt('ff_createdAt')!)
        : null;
    _languageCode = prefs.getString('ff_languageCode') ?? _languageCode;
    _entityKey = prefs.getString('ff_entityKey') ?? _entityKey;
    _bgImage = prefs.getString('ff_bgImage') ?? _bgImage;
  }

  static bool _shouldNotify = true;
  void _maybeNotifyListeners() {
    if (_shouldNotify) notifyListeners();
  }

  // Update FFAppState without notifying and rebuilding all widgets.
  static void updateSilently(VoidCallback callback) {
    try {
      _shouldNotify = false;
      callback();
    } finally {
      _shouldNotify = true;
    }
  }

  late SharedPreferences prefs;

  String _logoURL = '';
  String get logoURL => _logoURL;
  set logoURL(String _value) {
    _maybeNotifyListeners();
    _logoURL = _value;
  }

  Color _primaryBtnColor = Color(4278190080);
  Color get primaryBtnColor => _primaryBtnColor;
  set primaryBtnColor(Color _value) {
    _maybeNotifyListeners();
    _primaryBtnColor = _value;
  }

  bool _isloading = false;
  bool get isloading => _isloading;
  set isloading(bool _value) {
    _maybeNotifyListeners();
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
    _maybeNotifyListeners();
    _imgPath = _value;
  }

  void addToImgPath(String _value) {
    _maybeNotifyListeners();
    _imgPath.add(_value);
  }

  void removeFromImgPath(String _value) {
    _maybeNotifyListeners();
    _imgPath.remove(_value);
  }

  String _key = 'Starbucks cafe company';
  String get key => _key;
  set key(String _value) {
    _maybeNotifyListeners();
    _key = _value;
  }

  String _name = '';
  String get name => _name;
  set name(String _value) {
    _maybeNotifyListeners();
    _name = _value;
    prefs.setString('ff_name', _value);
  }

  Color _bgclr = Colors.transparent;
  Color get bgclr => _bgclr;
  set bgclr(Color _value) {
    _maybeNotifyListeners();
    _bgclr = _value;
    prefs.setString('ff_bgclr', _value.value.toString());
  }

  String _logoIcon = '';
  String get logoIcon => _logoIcon;
  set logoIcon(String _value) {
    _maybeNotifyListeners();
    _logoIcon = _value;
    prefs.setString('ff_logoIcon', _value);
  }

  String _appTitle = '';
  String get appTitle => _appTitle;
  set appTitle(String _value) {
    _maybeNotifyListeners();
    _appTitle = _value;
    prefs.setString('ff_appTitle', _value);
  }

  Color _appTitleClr = Colors.transparent;
  Color get appTitleClr => _appTitleClr;
  set appTitleClr(Color _value) {
    _maybeNotifyListeners();
    _appTitleClr = _value;
    prefs.setString('ff_appTitleClr', _value.value.toString());
  }

  String _appTagLine = '';
  String get appTagLine => _appTagLine;
  set appTagLine(String _value) {
    _maybeNotifyListeners();
    _appTagLine = _value;
    prefs.setString('ff_appTagLine', _value);
  }

  Color _appTagLineClr = Colors.transparent;
  Color get appTagLineClr => _appTagLineClr;
  set appTagLineClr(Color _value) {
    _maybeNotifyListeners();
    _appTagLineClr = _value;
    prefs.setString('ff_appTagLineClr', _value.value.toString());
  }

  Color _primaryBtnClr = Colors.transparent;
  Color get primaryBtnClr => _primaryBtnClr;
  set primaryBtnClr(Color _value) {
    _maybeNotifyListeners();
    _primaryBtnClr = _value;
    prefs.setString('ff_primaryBtnClr', _value.value.toString());
  }

  Color _secondaryBtnClr = Colors.transparent;
  Color get secondaryBtnClr => _secondaryBtnClr;
  set secondaryBtnClr(Color _value) {
    _maybeNotifyListeners();
    _secondaryBtnClr = _value;
    prefs.setString('ff_secondaryBtnClr', _value.value.toString());
  }

  Color _darkBgPageClr = Colors.transparent;
  Color get darkBgPageClr => _darkBgPageClr;
  set darkBgPageClr(Color _value) {
    _maybeNotifyListeners();
    _darkBgPageClr = _value;
    prefs.setString('ff_darkBgPageClr', _value.value.toString());
  }

  Color _liveDivisionClr = Colors.transparent;
  Color get liveDivisionClr => _liveDivisionClr;
  set liveDivisionClr(Color _value) {
    _maybeNotifyListeners();
    _liveDivisionClr = _value;
    prefs.setString('ff_liveDivisionClr', _value.value.toString());
  }

  Color _navigationIconClr = Colors.transparent;
  Color get navigationIconClr => _navigationIconClr;
  set navigationIconClr(Color _value) {
    _maybeNotifyListeners();
    _navigationIconClr = _value;
    prefs.setString('ff_navigationIconClr', _value.value.toString());
  }

  int _custonId = 0;
  int get custonId => _custonId;
  set custonId(int _value) {
    _maybeNotifyListeners();
    _custonId = _value;
    prefs.setInt('ff_custonId', _value);
  }

  DateTime? _createdAt;
  DateTime? get createdAt => _createdAt;
  set createdAt(DateTime? _value) {
    _maybeNotifyListeners();
    _createdAt = _value;
    _value != null
        ? prefs.setInt('ff_createdAt', _value.millisecondsSinceEpoch)
        : prefs.remove('ff_createdAt');
  }

  String _languageCode = '';
  String get languageCode => _languageCode;
  set languageCode(String _value) {
    _maybeNotifyListeners();
    _languageCode = _value;
    prefs.setString('ff_languageCode', _value);
  }

  String _entityKey = '';
  String get entityKey => _entityKey;
  set entityKey(String _value) {
    _maybeNotifyListeners();
    _entityKey = _value;
    prefs.setString('ff_entityKey', _value);
  }

  String _bgImage = '';
  String get bgImage => _bgImage;
  set bgImage(String _value) {
    _maybeNotifyListeners();
    _bgImage = _value;
    prefs.setString('ff_bgImage', _value);
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
