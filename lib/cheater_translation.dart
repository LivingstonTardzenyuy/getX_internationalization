import 'package:get/get_navigation/src/root/internacionalization.dart';

class CheaterTranslation extends Translations{
  @override
  Map<String, Map<String, String>> get keys => {
    'en': Locales.en,
    'fr': Locales.fr,
  };
}


class LocalKeys{
  static const appbar = 'appbar';
  static const easy_lang_tran = 'easy_lang_tran';
  static const next_page = 'next_page';
  static const change_lang = 'change_lang';
  static const next_page_text = "next_page_text";
  static const appbar2 = 'appbar2';
  static const welcome = 'welcome';
}

class Locales{
  static const en = {
      'appbar': 'Hello, welcome, have a nice day',
      'easy_lang_tran': 'Easy language translator using GetX',
      'next_page': 'Next page',
      'change_lang': 'Switch language',
      'next_page_text': "This is simple an app that will allow you to switch between different languages",
      'appbar2': 'Just testing',
      'welcome': 'Welcome Home'
  };

  static const fr = {
    'appbar': 'Bonjour, bienvenue, bonne journée',
    'easy_lang_tran': 'Application de traduction de langue',
    'next_page': 'Page suivante',
    'change_lang': 'Changer de langue',
    "next_page_text": "C'est une application simple qui vous permettra de basculer entre différentes langues",
    'appbar2': 'Je teste juste',
    'welcome': 'Bienvenue'
  };
}
