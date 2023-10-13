import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _kLocaleStorageKey = '__locale_key__';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'es'];

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
  String? get languageShortCode =>
      _languagesWithShortCode.contains(locale.toString())
          ? '${locale.toString()}_short'
          : null;
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? esText = '',
  }) =>
      [enText, esText][languageIndex] ?? '';

  static const Set<String> _languagesWithShortCode = {
    'ar',
    'az',
    'ca',
    'cs',
    'da',
    'de',
    'dv',
    'en',
    'es',
    'et',
    'fi',
    'fr',
    'gr',
    'he',
    'hi',
    'hu',
    'it',
    'km',
    'ku',
    'mn',
    'ms',
    'no',
    'pt',
    'ro',
    'ru',
    'rw',
    'sv',
    'th',
    'uk',
    'vi',
  };
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
  // Register
  {
    '4v2n96oi': {
      'en': 'Open your account in \nless than 5 minutes',
      'es': '',
    },
    'om7ok2oh': {
      'en': 'Sign up with e-mail',
      'es': '',
    },
    '5r72qvgw': {
      'en': 'Already have account?',
      'es': '',
    },
    'rnwbgczf': {
      'en': 'Log in',
      'es': '',
    },
    '76ru6anu': {
      'en': 'Home',
      'es': '',
    },
  },
  // SignUp
  {
    'nfb7a90n': {
      'en': 'Create account',
      'es': '',
    },
    'w4xm4jon': {
      'en': 'Let\'s get started by filling out the form below.',
      'es': '',
    },
    '4jpfo16j': {
      'en': 'Name',
      'es': '',
    },
    'oohlw5uc': {
      'en': 'Email Address',
      'es': '',
    },
    '1av3kmsj': {
      'en': 'Password',
      'es': '',
    },
    'hxsogaic': {
      'en': 'Confirm Password',
      'es': '',
    },
    'qq9dhf7m': {
      'en': 'I would like to receive inspriation emails.',
      'es': '',
    },
    'deopt17x': {
      'en': 'Create Account',
      'es': '',
    },
    'oxn8f64g': {
      'en': 'Home',
      'es': '',
    },
  },
  // SignIn
  {
    'juh2ss9e': {
      'en': 'Welcome back',
      'es': '',
    },
    'taz1eoxv': {
      'en': 'Fill out the information below in order to access your account.',
      'es': '',
    },
    'x9t0h1zi': {
      'en': 'Email Address',
      'es': '',
    },
    'py8njvd1': {
      'en': 'Password',
      'es': '',
    },
    '6n391aex': {
      'en': 'Forgot Password?',
      'es': '',
    },
    'tv05nkns': {
      'en': 'Login',
      'es': '',
    },
    'ert7kjre': {
      'en': 'Home',
      'es': '',
    },
  },
  // PaymentCompleted
  {
    'y2cuzokd': {
      'en': 'Transfer Confirmed!',
      'es': '',
    },
    '1rfm0kzm': {
      'en': '\$425.24',
      'es': '',
    },
    'dp8jr9ox': {
      'en':
          'Your payment has been confirmed, it may take 1-2 hours in order for your payment to go through and show up in your transation list.',
      'es': '',
    },
    'cpp88pfb': {
      'en': 'Mastercard Ending in 4021',
      'es': '',
    },
    '6lcgs0v4': {
      'en': '\$425.24',
      'es': '',
    },
    'w0ya0mng': {
      'en': 'Go Home',
      'es': '',
    },
    'gunqc3wf': {
      'en': 'Home',
      'es': '',
    },
  },
  // ForgotPassword
  {
    '5qoc0j1t': {
      'en': 'Forgot \nPassword',
      'es': '',
    },
    'mph4i2z3': {
      'en':
          'We will send you an email with a link to reset your password, please enter the email associated with your account below:',
      'es': '',
    },
    'rjqwrr7d': {
      'en': 'Email Address',
      'es': '',
    },
    'tdl0p1vd': {
      'en': 'Continue',
      'es': '',
    },
    'ksa5w9w2': {
      'en': 'Home',
      'es': '',
    },
  },
  // Notices
  {
    '2tg7513v': {
      'en': 'Generates up to \n11% annual return',
      'es': '',
    },
    'l6qkuzw4': {
      'en': '5% crypto cashback on all transactions',
      'es': '',
    },
    '0oyqf7hh': {
      'en': 'Take control of your money',
      'es': '',
    },
    'pcfko7vg': {
      'en': 'Manage your money intuitively and smoothly',
      'es': '',
    },
    '19dkz0yi': {
      'en': 'Apple Pay support',
      'es': '',
    },
    '9cvswybf': {
      'en': 'Free yourself from your wallet. Apple Pay is easy to use.',
      'es': '',
    },
    'vvgk2z8x': {
      'en': 'Next',
      'es': '',
    },
    '5f6r5e1w': {
      'en': 'Skip',
      'es': '',
    },
    'ymf0a2wj': {
      'en': 'Home',
      'es': '',
    },
  },
  // Settings
  {
    'wjkfisaf': {
      'en': 'Settings',
      'es': '',
    },
    'g1xuduc2': {
      'en': 'Getting Started',
      'es': '',
    },
    'd5o8ldij': {
      'en': 'About Us',
      'es': '',
    },
    '7pr9wcht': {
      'en': 'Help',
      'es': '',
    },
    '50fg31yq': {
      'en': 'Privacy Policy',
      'es': '',
    },
    'bs6auxrb': {
      'en': 'Terms & Conditions',
      'es': '',
    },
    'fible96o': {
      'en': 'Follow us on',
      'es': '',
    },
    '3lnk5ri8': {
      'en': 'Version',
      'es': '',
    },
    '47ppkz0n': {
      'en': 'v0.0.1',
      'es': '',
    },
    '3hwea10s': {
      'en': 'Log Out',
      'es': '',
    },
    'io6jrm24': {
      'en': 'Home',
      'es': '',
    },
  },
  // HomePage
  {
    '572ops90': {
      'en': 'Welcome,',
      'es': '',
    },
    '7feinvkq': {
      'en': ' Andrew',
      'es': '',
    },
    'ki67psaf': {
      'en': 'Your latest updates are below.',
      'es': '',
    },
    'dk31bpm7': {
      'en': '\$7,630',
      'es': '',
    },
    '8vkf4085': {
      'en': '**** 0149',
      'es': '',
    },
    '2ou1wx90': {
      'en': 'Quick Service',
      'es': '',
    },
    '7v1cn443': {
      'en': 'Transfer',
      'es': '',
    },
    '2u1jg2sv': {
      'en': 'Activity',
      'es': '',
    },
    '8oprlszr': {
      'en': 'My Bank',
      'es': '',
    },
    'mixnlae2': {
      'en': 'Transaction',
      'es': '',
    },
    'jz3qwrln': {
      'en': 'Go Far Rewards',
      'es': '',
    },
    '5motzr7s': {
      'en': 'Income',
      'es': '',
    },
    'ekffrfsr': {
      'en': '\$50.00',
      'es': '',
    },
    'imlpu3ii': {
      'en': 'Hello World',
      'es': '',
    },
    'nk51itau': {
      'en': 'Go Far Rewards',
      'es': '',
    },
    '6obruvsk': {
      'en': 'Income',
      'es': '',
    },
    'rduwbwnn': {
      'en': '\$50.00',
      'es': '',
    },
    'wse29frj': {
      'en': 'Hello World',
      'es': '',
    },
    'okkh2g3t': {
      'en': 'Go Far Rewards',
      'es': '',
    },
    'ov7bfibn': {
      'en': 'Income',
      'es': '',
    },
    'ega21r28': {
      'en': '\$50.00',
      'es': '',
    },
    'u1qvgimf': {
      'en': 'Hello World',
      'es': '',
    },
    'ripb7avs': {
      'en': 'Go Far Rewards',
      'es': '',
    },
    'snk1saq2': {
      'en': 'Income',
      'es': '',
    },
    '20xyhjrk': {
      'en': '\$50.00',
      'es': '',
    },
    '79kl7od1': {
      'en': 'Hello World',
      'es': '',
    },
    'dcka4p7m': {
      'en': 'Home',
      'es': '',
    },
  },
  // Transfer
  {
    'lvrtoq9v': {
      'en': 'Transfer Funds',
      'es': '',
    },
    '5r5if9ua': {
      'en': 'Balance',
      'es': '',
    },
    'c4kzh27j': {
      'en': '\$7,630',
      'es': '',
    },
    '8lscofas': {
      'en': '**** 0149',
      'es': '',
    },
    'ro63p48x': {
      'en': '05/25',
      'es': '',
    },
    'f6hsgh5o': {
      'en': 'Change Account',
      'es': '',
    },
    'nxxoqwzn': {
      'en': 'Internal Transfer',
      'es': '',
    },
    'eybhcmsg': {
      'en': 'External Transfer',
      'es': '',
    },
    'v43woz88': {
      'en': 'ACH Payment',
      'es': '',
    },
    'yzyaritq': {
      'en': 'Transfer Type',
      'es': '',
    },
    'dqen1ik2': {
      'en': 'Select Account',
      'es': '',
    },
    'vwvy22po': {
      'en': 'Account ****2010',
      'es': '',
    },
    'jr1gm8h4': {
      'en': 'Account ****2011',
      'es': '',
    },
    'pjhzrtbq': {
      'en': 'Account ****2012',
      'es': '',
    },
    'vl67rkid': {
      'en': 'Choose an Account',
      'es': '',
    },
    'y920i1cc': {
      'en': '\$ Amount',
      'es': '',
    },
    'u82pphki': {
      'en': 'Your new account balance is:',
      'es': '',
    },
    'ro30kwu9': {
      'en': '\$7,630',
      'es': '',
    },
    'ogoppiax': {
      'en': 'Send Transfer',
      'es': '',
    },
    'vk881u2p': {
      'en': 'Tap above to complete transfer',
      'es': '',
    },
    'smv8dpr4': {
      'en': 'Home',
      'es': '',
    },
  },
  // Miscellaneous
  {
    '9pfaji6e': {
      'en': '',
      'es': '',
    },
    'zrt3t1h1': {
      'en': '',
      'es': '',
    },
    'p2tn2fbn': {
      'en': '',
      'es': '',
    },
    'ybevwlfv': {
      'en': '',
      'es': '',
    },
    'yiiel7ge': {
      'en': '',
      'es': '',
    },
    'q7w8nquf': {
      'en': '',
      'es': '',
    },
    'gii4hky7': {
      'en': '',
      'es': '',
    },
    '7tj4sj8i': {
      'en': '',
      'es': '',
    },
    'hirct2uq': {
      'en': '',
      'es': '',
    },
    'iysta36x': {
      'en': '',
      'es': '',
    },
    'v5nqaq2i': {
      'en': '',
      'es': '',
    },
    'xl512vzu': {
      'en': '',
      'es': '',
    },
    'thhk6c0p': {
      'en': '',
      'es': '',
    },
    'bfvfydau': {
      'en': '',
      'es': '',
    },
    '26fp3qm5': {
      'en': '',
      'es': '',
    },
    '9rd5gb0w': {
      'en': '',
      'es': '',
    },
    'kpx3c4qs': {
      'en': '',
      'es': '',
    },
    '6q65auir': {
      'en': '',
      'es': '',
    },
    '7tnhudh2': {
      'en': '',
      'es': '',
    },
    'tx727zi2': {
      'en': '',
      'es': '',
    },
    'rmwbarin': {
      'en': '',
      'es': '',
    },
    'ltcvz23m': {
      'en': '',
      'es': '',
    },
    'ujidk56g': {
      'en': '',
      'es': '',
    },
  },
].reduce((a, b) => a..addAll(b));
