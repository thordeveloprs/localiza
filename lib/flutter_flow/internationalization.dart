import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'pt'];

  static late SharedPreferences _prefs;
  static Future initialize() async =>
      _prefs = await SharedPreferences.getInstance();
  static Future storeLocale(String locale) =>
      _prefs.setString(_kLocaleStorageKey, locale);
  static Locale? getStoredLocale() {
    final locale = _prefs.getString(_kLocaleStorageKey);
    return locale != null && locale.isNotEmpty ? createLocale(locale) : null;
  }

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? ptText = '',
  }) =>
      [enText, ptText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) {
    final language = locale.toString();
    return FFLocalizations.languages().contains(
      language.endsWith('_')
          ? language.substring(0, language.length - 1)
          : language,
    );
  }

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // LoginSimple
  {
    'sx8tqn07': {
      'en': 'Back',
      'pt': '',
    },
    '8r8nuh9x': {
      'en': 'Login',
      'pt': '',
    },
    '9sa2eekz': {
      'en': 'Access your account by logging in below.',
      'pt': '',
    },
    '23ghnb04': {
      'en': 'Your email address...',
      'pt': '',
    },
    '5id4wyyd': {
      'en': 'Enter your email...',
      'pt': '',
    },
    'vbkys47x': {
      'en': 'Password',
      'pt': '',
    },
    'rtflgaaj': {
      'en': 'Please enter your password...',
      'pt': '',
    },
    '829p6kt5': {
      'en': 'Login',
      'pt': '',
    },
    '1gsmobgz': {
      'en': 'Forgot Password?',
      'pt': '',
    },
    'sorqs12p': {
      'en': 'Home',
      'pt': '',
    },
  },
  // locationList
  {
    'fwr8teio': {
      'en': 'Hi',
      'pt': '',
    },
    '3yxfaort': {
      'en': 'Select your location',
      'pt': '',
    },
    'l0xrj7kv': {
      'en': 'Search here ...',
      'pt': '',
    },
    'jy5tdvz8': {
      'en': 'Address',
      'pt': '',
    },
    'zsist7a4': {
      'en': 'Cacao Show\n123 Main Street',
      'pt': '',
    },
    'twaa4kv1': {
      'en': 'See more',
      'pt': '',
    },
    'cttcpulf': {
      'en': 'Home',
      'pt': '',
    },
  },
  // splash
  {
    '3xm52yzz': {
      'en': 'Manage Locations',
      'pt': 'Gerenciar locais',
    },
    'vv720i2t': {
      'en': 'Atualizar os detalhes dos locais de forma segura e precisa',
      'pt': '',
    },
    'pou4j8j4': {
      'en': 'Entrar',
      'pt': '',
    },
    '4dalh64i': {
      'en': 'Stay On Top',
      'pt': '',
    },
    'dsywx29f': {
      'en': 'Find your hotel easy and travel anywhere you want with us',
      'pt': '',
    },
    'p3m03liu': {
      'en': 'Want to see 360',
      'pt': '',
    },
    'id2jxwjg': {
      'en': 'Tour',
      'pt': '',
    },
    'axuvoxz5': {
      'en': 'Passion Is Key',
      'pt': '',
    },
    'gi3pz2fu': {
      'en':
          'In modern world the most intresting things are the most passionable',
      'pt': '',
    },
    'vj5904rv': {
      'en': 'Login',
      'pt': '',
    },
    'raot1wxr': {
      'en': 'Don\'t have account?',
      'pt': '',
    },
    'gfk5pgkd': {
      'en': 'Sign up',
      'pt': '',
    },
    '8y5bhfyn': {
      'en': 'Home',
      'pt': '',
    },
  },
  // locationDetail
  {
    'zw7axerr': {
      'en': 'Top rated',
      'pt': '',
    },
    'dz9e68ic': {
      'en': 'Cacao Show\n123 Main Street\nChicago, IL 60626',
      'pt': '',
    },
    'kuub86qc': {
      'en':
          'Contrary to popular belief, Lorem Ipsum is not simply a random text, it has roots in a piece of classical latin literature',
      'pt': '',
    },
    '2ity38zn': {
      'en': 'Hotel rent',
      'pt': '',
    },
    'owaf4sa1': {
      'en': '\$42',
      'pt': '',
    },
    'aj3jxwsc': {
      'en': 'Per\nNight',
      'pt': '',
    },
    'c1b9k9s7': {
      'en': 'Edit Details',
      'pt': '',
    },
    '9qaqiez3': {
      'en': 'Home',
      'pt': '',
    },
  },
  // locationListCopy
  {
    'r4x85r6u': {
      'en': 'Select your location',
      'pt': '',
    },
    'gndnes8w': {
      'en': 'Search here ...',
      'pt': '',
    },
    '6l0qytkz': {
      'en': 'Location',
      'pt': '',
    },
    'j8i8chg7': {
      'en': 'See more',
      'pt': '',
    },
    'yl8vso9o': {
      'en': 'Home',
      'pt': '',
    },
  },
  // CreatePosts
  {
    'ni552y6m': {
      'en': 'Create Post',
      'pt': '',
    },
    '7it9wry6': {
      'en': 'Enter post details here...',
      'pt': '',
    },
    'xegvmwn9': {
      'en': 'Tag Location',
      'pt': '',
    },
    'kdax2l1q': {
      'en': 'Create Post',
      'pt': '',
    },
  },
  // SamplePage
  {
    'igctubkw': {
      'en': 'Click here',
      'pt': '',
    },
    'poftfsg9': {
      'en': 'Test Page',
      'pt': '',
    },
    'fw3uruod': {
      'en': 'Home',
      'pt': '',
    },
  },
  // Miscellaneous
  {
    'dpqn0xlo': {
      'en': '',
      'pt': '',
    },
    'op089see': {
      'en': '',
      'pt': '',
    },
    'ctac4f0y': {
      'en': '',
      'pt': '',
    },
    'x53l09cg': {
      'en': '',
      'pt': '',
    },
    '14tgftga': {
      'en': '',
      'pt': '',
    },
    'p7dktl4s': {
      'en': '',
      'pt': '',
    },
    'l3qwo59g': {
      'en': '',
      'pt': '',
    },
    'mqszwp1q': {
      'en': '',
      'pt': '',
    },
    'ib1443p7': {
      'en': '',
      'pt': '',
    },
    '0xyiqqs3': {
      'en': '',
      'pt': '',
    },
    'nt36lob1': {
      'en': '',
      'pt': '',
    },
    'wmcry1mr': {
      'en': '',
      'pt': '',
    },
    'qiijzack': {
      'en': '',
      'pt': '',
    },
    '9stu0miy': {
      'en': '',
      'pt': '',
    },
    '3kkujekd': {
      'en': '',
      'pt': '',
    },
    '122kfagh': {
      'en': '',
      'pt': '',
    },
    'ggitppmq': {
      'en': '',
      'pt': '',
    },
    'fp65rdhk': {
      'en': '',
      'pt': '',
    },
    'ppsrx9s1': {
      'en': '',
      'pt': '',
    },
    'in1ahdey': {
      'en': '',
      'pt': '',
    },
    'hfl9pljm': {
      'en': '',
      'pt': '',
    },
    'hit4ssik': {
      'en': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
