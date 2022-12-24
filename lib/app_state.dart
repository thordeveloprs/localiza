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

  String _description = 'Gerenciador de Localidades no Google';
  String get description => _description;
  set description(String _value) {
    _maybeNotifyListeners();
    _description = _value;
  }

  String _subDescription =
      'Atualizar as information das agencias de forma segura a precisa';
  String get subDescription => _subDescription;
  set subDescription(String _value) {
    _maybeNotifyListeners();
    _subDescription = _value;
  }

  String _bgImage =
      'https://s2.glbimg.com/eyXFx93GvmeWL6wHIFSSa4n-OOs=/0x0:1814x1330/924x0/smart/filters:strip_icc()/i.s3.glbimg.com/v1/AUTH_63b422c2caee4269b8b34177e8876b93/internal_photos/bs/2021/K/t/0LSK5dQr22BvWqbsQ9Jw/sede-localiza3.jpg';
  String get bgImage => _bgImage;
  set bgImage(String _value) {
    _maybeNotifyListeners();
    _bgImage = _value;
  }

  String _logo =
      'http://1.bp.blogspot.com/-Jz_ihS4ztDU/U0-7fnfasfI/AAAAAAAAfGM/R9x-Dg-ps34/s1600/Localiza-logo-2014.png';
  String get logo => _logo;
  set logo(String _value) {
    _maybeNotifyListeners();
    _logo = _value;
  }

  Color _bgTransparentClr = Color(1409323592);
  Color get bgTransparentClr => _bgTransparentClr;
  set bgTransparentClr(Color _value) {
    _maybeNotifyListeners();
    _bgTransparentClr = _value;
  }

  Color _themeClr = Color(4278227528);
  Color get themeClr => _themeClr;
  set themeClr(Color _value) {
    _maybeNotifyListeners();
    _themeClr = _value;
  }

  Color _textFieldClr = Color(1761645128);
  Color get textFieldClr => _textFieldClr;
  set textFieldClr(Color _value) {
    _maybeNotifyListeners();
    _textFieldClr = _value;
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
