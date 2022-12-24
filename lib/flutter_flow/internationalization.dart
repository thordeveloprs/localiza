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
    'y0fw8o8l': {
      'en': 'Click here',
      'pt': '',
    },
    'hqab9gwt': {
      'en': 'Click here',
      'pt': '',
    },
    'tk14xaaj': {
      'en': 'Test Page',
      'pt': '',
    },
    'ujasejce': {
      'en': 'Home',
      'pt': '',
    },
  },
  // LoginPage
  {
    'z5r0x132': {
      'en': 'Email',
      'pt': '',
    },
    'y1m8q0w9': {
      'en': 'Password',
      'pt': '',
    },
    'f7trh3pu': {
      'en': 'Login',
      'pt': '',
    },
    'ucn6nn2n': {
      'en': 'Home',
      'pt': '',
    },
  },
  // HomePage
  {
    'acz0x5t0': {
      'en': 'Hi, ',
      'pt': '',
    },
    'hhwfvfwb': {
      'en': 'Select Location',
      'pt': '',
    },
    '49a2lg2g': {
      'en': 'Search Here or Select Below',
      'pt': '',
    },
    'ujc3kmtr': {
      'en': '4.5',
      'pt': '',
    },
    'rehow8zh': {
      'en': '(250)',
      'pt': '',
    },
    'z27zubcy': {
      'en': 'Loja de artigos esportivas',
      'pt': '',
    },
    'sdsphfs9': {
      'en': 'Home',
      'pt': '',
    },
  },
  // OutletDetailsPage
  {
    'ju8vwx9u': {
      'en': '(250)',
      'pt': '',
    },
    'frg23sjb': {
      'en': 'Loja de artigos esportivas',
      'pt': '',
    },
    'j0dmt3dt': {
      'en': 'Edit',
      'pt': '',
    },
    '8u577buh': {
      'en': '320',
      'pt': '',
    },
    'bkq5cxze': {
      'en': '+',
      'pt': '',
    },
    'bp8o1yub': {
      'en': 'Photos',
      'pt': '',
    },
    '6ym15kbt': {
      'en': 'Website',
      'pt': '',
    },
    'btgdjfp0': {
      'en': 'Call',
      'pt': '',
    },
    '7eypj0ko': {
      'en': 'Add Photo',
      'pt': '',
    },
    'ltqzjj9n': {
      'en': 'OverView',
      'pt': '',
    },
    '2pxuwnul': {
      'en': 'Address :',
      'pt': '',
    },
    'rqcyqmez': {
      'en': 'Hours :',
      'pt': '',
    },
    'mdzg0fwd': {
      'en': 'Saturday',
      'pt': '',
    },
    'ypzv2nwo': {
      'en': 'Sunday',
      'pt': '',
    },
    'ssw1m41a': {
      'en': 'Monday',
      'pt': '',
    },
    't17lobhm': {
      'en': 'Tueday',
      'pt': '',
    },
    'qn76gfxp': {
      'en': 'Wednesday',
      'pt': '',
    },
    'lymonmnu': {
      'en': 'Thursday',
      'pt': '',
    },
    'pgvp8w2h': {
      'en': 'Friday',
      'pt': '',
    },
    'murtc0ga': {
      'en': '11AM-1AM',
      'pt': '',
    },
    '95bjupje': {
      'en': '11AM-10PM',
      'pt': '',
    },
    'qtphk6hg': {
      'en': 'Closed',
      'pt': '',
    },
    'n9foqd40': {
      'en': 'Closed',
      'pt': '',
    },
    'hrd0earh': {
      'en': '2-10PM',
      'pt': '',
    },
    '7fcav5gz': {
      'en': '2-10PM',
      'pt': '',
    },
    'lryeqnl3': {
      'en': '2PM-1AM',
      'pt': '',
    },
    '95x1mjp2': {
      'en': 'Phone :',
      'pt': '',
    },
    'rf0uf90l': {
      'en': 'Menu :',
      'pt': '',
    },
    'gqlpob13': {
      'en': 'Places Singleplateform.com',
      'pt': '',
    },
    'ugo7fpfo': {
      'en': 'Description',
      'pt': '',
    },
    '8owl4zw2': {
      'en': 'Review',
      'pt': '',
    },
    'dyjp872b': {
      'en': 'Home',
      'pt': '',
    },
  },
  // EditPage
  {
    'bbhhcm3d': {
      'en': 'Suggest an edit',
      'pt': '',
    },
    'nsbs8jqz': {
      'en': 'Cafe Martellili Midi',
      'pt': '',
    },
    'm83nipmz': {
      'en': 'Place Details',
      'pt': '',
    },
    'maqfnnz3': {
      'en': 'Cafe Marteneili',
      'pt': '',
    },
    'n2exh94w': {
      'en': 'Coffee store',
      'pt': '',
    },
    'y7utj283': {
      'en': 'Coffee store',
      'pt': '',
    },
    'g9qxkuj5': {
      'en': 'Address (Required)*',
      'pt': '',
    },
    'i0xf2zez': {
      'en': 'Edit Map Location',
      'pt': '',
    },
    'sd6jlt3p': {
      'en': 'Located Within',
      'pt': '',
    },
    'sjh11x7h': {
      'en': 'Hours',
      'pt': '',
    },
    'ru5zrrs9': {
      'en': 'Cancel',
      'pt': '',
    },
    'k0q7ot5l': {
      'en': 'Submit',
      'pt': '',
    },
    'cb8di28d': {
      'en': 'Home',
      'pt': '',
    },
  },
  // SignUpPage
  {
    'e4pdfktc': {
      'en': 'Name',
      'pt': '',
    },
    'oastihek': {
      'en': 'Email',
      'pt': '',
    },
    'jj58u0ny': {
      'en': 'Password',
      'pt': '',
    },
    'tlspvty2': {
      'en': 'Confirm Password',
      'pt': '',
    },
    'dqeiy3ut': {
      'en': 'Sign Up',
      'pt': '',
    },
    'rocsc2yj': {
      'en': 'Sign Up Page',
      'pt': '',
    },
    'pvyk56lp': {
      'en': 'Home',
      'pt': '',
    },
  },
  // LoginPageCopy
  {
    'uqxd763g': {
      'en': 'Gerenciador de Localidades no Google',
      'pt': '',
    },
    'itx38qxl': {
      'en': 'Atualizar as information das agencias de forma segura a precisa',
      'pt': '',
    },
    'b8ysdg7l': {
      'en': 'Email',
      'pt': '',
    },
    'v5a83olt': {
      'en': 'Password',
      'pt': '',
    },
    'fhx9vr6l': {
      'en': 'Login',
      'pt': '',
    },
    '4klqk1lt': {
      'en': 'Home',
      'pt': '',
    },
  },
  // HomePageCopy
  {
    '07dj9pqj': {
      'en': 'Hi,',
      'pt': '',
    },
    'm8424cp0': {
      'en': 'Select Location',
      'pt': '',
    },
    '0x0z9po5': {
      'en': 'Search Here or Select Below',
      'pt': '',
    },
    '4qcw91oq': {
      'en': '4.5',
      'pt': '',
    },
    'wpvri2tf': {
      'en': '(250)',
      'pt': '',
    },
    'v65d9chb': {
      'en': 'Loja de artigos esportivas',
      'pt': '',
    },
    'z7tagnvf': {
      'en': 'Home',
      'pt': '',
    },
  },
  // splashCopy
  {
    '3urmlmw1': {
      'en': 'Manage Locations',
      'pt': 'Gerenciar locais',
    },
    'ycfth455': {
      'en': 'Atualizar os detalhes dos locais de forma segura e precisa',
      'pt': '',
    },
    '2c5g8qyl': {
      'en': 'Entrar',
      'pt': '',
    },
    'hce3uc42': {
      'en': 'Stay On Top',
      'pt': '',
    },
    'dazba6y3': {
      'en': 'Find your hotel easy and travel anywhere you want with us',
      'pt': '',
    },
    's5dkjuuc': {
      'en': 'Want to see 360',
      'pt': '',
    },
    'pa41652b': {
      'en': 'Tour',
      'pt': '',
    },
    'e3c4m7br': {
      'en': 'Passion Is Key',
      'pt': '',
    },
    '21xqs5c5': {
      'en':
          'In modern world the most intresting things are the most passionable',
      'pt': '',
    },
    'e46nvt3g': {
      'en': 'Login',
      'pt': '',
    },
    '9po83w6h': {
      'en': 'Don\'t have account?',
      'pt': '',
    },
    '9mysb2fc': {
      'en': 'Sign up',
      'pt': '',
    },
    'b1whzrzx': {
      'en': 'Home',
      'pt': '',
    },
  },
  // Hours
  {
    'va7oib4h': {
      'en': 'Hours',
      'pt': '',
    },
    'dze4lwid': {
      'en': 'Burger King',
      'pt': '',
    },
    'peoic4zu': {
      'en': 'Mark as temporarily or permanently closed',
      'pt': '',
    },
    'egrhc39i': {
      'en': 'Sunday',
      'pt': '',
    },
    '9gunikuv': {
      'en': '7:00 am-11:00 pm',
      'pt': '',
    },
    '26hhknms': {
      'en': 'Monday',
      'pt': '',
    },
    'ox8vem1d': {
      'en': '7:00 am-11:00 pm',
      'pt': '',
    },
    'qhmhzoms': {
      'en': 'Tueday',
      'pt': '',
    },
    '0f7usxz2': {
      'en': '7:00 am-11:00 pm',
      'pt': '',
    },
    'uwtnz24v': {
      'en': 'Wednesday',
      'pt': '',
    },
    '4u0pnx81': {
      'en': '7:00 am-11:00 pm',
      'pt': '',
    },
    'qmj87wn7': {
      'en': 'Thursday',
      'pt': '',
    },
    '5nzffey7': {
      'en': '7:00 am-11:00 pm',
      'pt': '',
    },
    'b0ycm16d': {
      'en': 'Friday',
      'pt': '',
    },
    'qcksx0rj': {
      'en': '7:00 am-11:00 pm',
      'pt': '',
    },
    '2xc8g02d': {
      'en': 'Saterday',
      'pt': '',
    },
    'vwmatm8l': {
      'en': '7:00 am-11:00 pm',
      'pt': '',
    },
    '1xfb62h7': {
      'en': 'Edit All hours',
      'pt': '',
    },
    '5r1tohgb': {
      'en': 'Edit Mon-Sat',
      'pt': '',
    },
    'f2kjfu5h': {
      'en': 'Edit Sunday',
      'pt': '',
    },
    'vnbwgs4t': {
      'en': 'Add a Photo',
      'pt': '',
    },
    'b89up7ot': {
      'en':
          'Help your edit get approved by adding a close-up photo of this place’s hours',
      'pt': '',
    },
    '14ucgyk0': {
      'en': 'Add a Photo',
      'pt': '',
    },
    'gjvz115o': {
      'en':
          'If you add photos, they will appear publicly with your profile name and picture. They will appear on Google services across the web, like Maps and Search, and on third-party sites and apps that use Google services. Google may also use them to update other information about this place.',
      'pt': '',
    },
    'spie43gx': {
      'en': 'Cancel',
      'pt': '',
    },
    'qs7s1f5y': {
      'en': 'Save',
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
