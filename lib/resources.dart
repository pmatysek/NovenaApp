import 'dart:async';

import 'package:flutter/material.dart';

/// This class is generated by the flappy_translator package
/// Please do not change anything manually in this file, instead re-generate it when changes are available
class Resources {
  String get appTitle => _getText("appTitle");

  String get aboutNovenaTitle => _getText("aboutNovenaTitle");

  String get aboutNovenaText => _getText("aboutNovenaText");

  String get yes => _getText("yes");

  String get no => _getText("no");

  String get numberOfDaysToFinishNovena =>
      _getText("numberOfDaysToFinishNovena");

  String get finishNovena => _getText("finishNovena");

  String get areYouSureToFinishNovena => _getText("areYouSureToFinishNovena");

  String get finishBeforeEnd => _getText("finishBeforeEnd");

  String get howToPrayTitle => _getText("howToPrayTitle");

  String get howToPrayYtUrl => _getText("howToPrayYtUrl");

  String get startNovena => _getText("startNovena");

  String get novenaScreenTitle => _getText("novenaScreenTitle");

  String get petitionPrayer => _getText("petitionPrayer");

  String get thanksgivingPrayer => _getText("thanksgivingPrayer");

  String get prayer => _getText("prayer");

  String get actualPrayerText_petition => _getText("actualPrayerText_petition");

  String get actualPrayerText_thanksgiving =>
      _getText("actualPrayerText_thanksgiving");

  String dateOfNovenaEnd({
    @required String date,
  }) {
    String text = _getText("dateOfNovenaEnd");
    if (date != null) {
      text = text.replaceAll("%date\$s", date);
    }
    return text;
  }

  String get decadesToPrayToday => _getText("decadesToPrayToday");

  String get prayed => _getText("prayed");

  String get todayPrayer => _getText("todayPrayer");

  String get ok => _getText("ok");

  String get preyedAllDecades => _getText("preyedAllDecades");

  String get howToPrayHtml => _getText("howToPrayHtml");

  String get supportHtml => _getText("supportHtml");

  String get joyfulMysteries => _getText("joyfulMysteries");

  String get joyfulMysteries1 => _getText("joyfulMysteries1");

  String get joyfulMysteries2 => _getText("joyfulMysteries2");

  String get joyfulMysteries3 => _getText("joyfulMysteries3");

  String get joyfulMysteries4 => _getText("joyfulMysteries4");

  String get joyfulMysteries5 => _getText("joyfulMysteries5");

  String get sorrowfulMysteries => _getText("sorrowfulMysteries");

  String get sorrowfulMysteries1 => _getText("sorrowfulMysteries1");

  String get sorrowfulMysteries2 => _getText("sorrowfulMysteries2");

  String get sorrowfulMysteries3 => _getText("sorrowfulMysteries3");

  String get sorrowfulMysteries4 => _getText("sorrowfulMysteries4");

  String get sorrowfulMysteries5 => _getText("sorrowfulMysteries5");

  String get gloriousMysteries => _getText("gloriousMysteries");

  String get gloriousMysteries1 => _getText("gloriousMysteries1");

  String get gloriousMysteries2 => _getText("gloriousMysteries2");

  String get gloriousMysteries3 => _getText("gloriousMysteries3");

  String get gloriousMysteries4 => _getText("gloriousMysteries4");

  String get gloriousMysteries5 => _getText("gloriousMysteries5");

  String get luminousMysteries => _getText("luminousMysteries");

  String get luminousMysteries1 => _getText("luminousMysteries1");

  String get luminousMysteries2 => _getText("luminousMysteries2");

  String get luminousMysteries3 => _getText("luminousMysteries3");

  String get luminousMysteries4 => _getText("luminousMysteries4");

  String get luminousMysteries5 => _getText("luminousMysteries5");

  static Map<String, String> _localizedValues;

  static Map<String, String> _plValues = {
    "appTitle": "NovenaApp",
    "aboutNovenaTitle": "O nowennie",
    "aboutNovenaText":
        "Tutaj będzie tekst opisujący historię nowenny pompejańskiej",
    "yes": "Tak",
    "no": "Nie",
    "numberOfDaysToFinishNovena": "Liczba dni do końca nowenny:",
    "finishNovena": "Zakończ",
    "areYouSureToFinishNovena":
        "Czy jesteś pewien, że chcesz zakończyć nowennę?",
    "finishBeforeEnd": "Zakończysz nowennę przed czasem",
    "howToPrayTitle": "Jak odmawiać",
    "howToPrayYtUrl": "7UMbe3ayLhE",
    "startNovena": "Rozpocznij nowennę",
    "novenaScreenTitle": "Ekran nowenny",
    "petitionPrayer":
        "Pomnij o miłosierna Panno Różańcowa z Pompejów, jako nigdy jeszcze nie słyszano, aby ktokolwiek z czcicieli Twoich, z Różańcem Twoim, pomocy Twojej wzywający, miał być przez Ciebie opuszczony. Ach, nie gardź prośbą moją, o Matko Słowa Przedwiecznego, ale przez święty Twój różaniec i przez upodobanie, jakie okazujesz dla Twojej świątyni w Pompejach wysłuchaj mnie dobrotliwie. Amen. ",
    "thanksgivingPrayer":
        "Cóż Ci dać mogę, o Królowo pełna miłości? Moje całe życie poświęcam Tobie. Ile mi sił starczy, będę rozszerzać cześć Twoją, o Dziewico Różańca Świętego z Pompejów, bo gdy Twojej pomocy wezwałem, nawiedziła mnie łaska Boża. Wszędzie będę opowiadać o miłosierdziu, które mi wyświadczyłaś. O ile zdołam będę rozszerzać nabożeństwo do Różańca Świętego, wszystkim głosić będę, jak dobrotliwie obeszłaś się ze mną, aby i niegodni, tak jak i ja, grzesznicy, z zaufaniem do Ciebie się udawali. O, gdyby cały świat wiedział jak jesteś dobra, jaką masz litość nad cierpiącymi, wszystkie stworzenia uciekałyby się do Ciebie. Amen. ",
    "prayer": "Modlitwa",
    "actualPrayerText_petition": "Odmawiasz akrualnie część błagalną",
    "actualPrayerText_thanksgiving": "Odmawiasz aktualnie część dziękczynną",
    "dateOfNovenaEnd": "Data zakończenia nowenny: %date\$s",
    "decadesToPrayToday": "Liczba dziesiątek różańca do odmówienia dzisiaj:",
    "prayed": "Odmówiłem",
    "todayPrayer": "Modlitwa na dziś",
    "ok": "OK",
    "preyedAllDecades": "Odmówiłeś dzisiaj już wszystkie dziesiątki!",
    "howToPrayHtml":
        "<br>Nowenna Pompejańska trwa 54 dni i składa się z dwóch części: błagalnej i dziękczynnej (każda po 27 dni). Każdego dnia nowenny odmawiamy conajmniej 3 części Różańca Świętego. Najczęściej są to tajemnice radosne, bolesne i chwalebne, ale niekoniecznie (patrz filmik).<br>Przed rozpoczęciem każdego z różańców podczas nowenny mówimy:<br><br><b>Ten różaniec odmawiam na Twoją cześć Królowo Różańca Świętego oraz w tej następującej intencji…</b><br><br>Ważne aby wybrać jedną konkretną intencję i trzymać się jej przez cały okres trwania nowenny.br>Każdy różaniec podczas nowenny kończymy trzykrotnym zawołaniem do Matki Bożej:<br><br><b>Królowo Różańca Świętego, módl się za nami!</b><br><br>Podczas części błagalnej, a więc pierwsze 27 dni po zakończeniu ostatniego różańca każdego dnia odmawiamy modlitwę:<br><br><b>Pomnij o miłosierna Panno Różańcowa z Pompejów, jako nigdy jeszcze nie słyszano, aby ktokolwiek z czcicieli Twoich, z Różańcem Twoim, pomocy Twojej wzywający, miał być przez Ciebie opuszczony. Ach, nie gardź prośbą moją, o Matko Słowa Przedwiecznego, ale przez święty Twój różaniec i przez  upodobanie, jakie okazujesz dla Twojej świątyni w Pompejach wysłuchaj mnie dobrotliwie. Amen.</b><br><br>Natomiast w drugiej części nowenny, dziękczynnej dziękujemy Maryi za otrzymane łaski następującą modlitwą:<br><br><b>Cóż Ci dać mogę, o Królowo pełna miłości? Moje całe życie poświęcam Tobie. Ile mi sił starczy, będę rozszerzać cześć Twoją, o Dziewico Różańca Świętego z Pompejów, bo gdy Twojej pomocy wezwałem, nawiedziła mnie łaska Boża. Wszędzie będę opowiadać o miłosierdziu, które mi wyświadczyłaś. O ile zdołam będę rozszerzać nabożeństwo do Różańca Świętego, wszystkim głosić będę, jak dobrotliwie obeszłaś się ze mną, aby i niegodni, tak jak i ja, grzesznicy, z zaufaniem do Ciebie się udawali. O, gdyby cały świat wiedział jak jesteś dobra, jaką masz litość nad cierpiącymi, wszystkie stworzenia uciekałyby się do Ciebie. Amen. </b><br><br><br>Więcej wątpliwości na temat samej nowenny oraz sposobu jej odmawiania może rozwiać ojciec Adam Szustak na poniższym filmiku:",
    "supportHtml":
        "<h5>Jeśli chcesz wesprzeć autora aplikacji to bardzo proszę, pomódl się w jego intencji! <br>Jeżeli natomiast uważasz, że aplikacja jest naprawdę dobra i chętnie zapłaciłbyś za nią albo wsparł jej rozwój finansowo, to bardzo proszę wpłać tę kwotę na dowolnie wybrany cel charytatywny :-)<br><br> Pozdrawiam,<br> Paweł</h5>",
    "joyfulMysteries": "Tajemnice Radosne",
    "joyfulMysteries1": "Zwiastowanie Najświętszej Maryi Panny",
    "joyfulMysteries2": "Nawiedzenie Świętej Elżbiety",
    "joyfulMysteries3": "Narodzenie Pana Jezusa",
    "joyfulMysteries4": "Ofiarowanie Pana Jezusa w świątyni",
    "joyfulMysteries5": "Znalezienie Pana Jezusa w świątyni",
    "sorrowfulMysteries": "Tajemnice Bolesne",
    "sorrowfulMysteries1": "Modlitwa w Ogrójcu",
    "sorrowfulMysteries2": "Biczowanie Pana Jezusa",
    "sorrowfulMysteries3": "Cierniem ukoronowanie Pana Jezusa",
    "sorrowfulMysteries4": "Droga krzyżowa",
    "sorrowfulMysteries5": "Śmierć Pana Jezusa na krzyżu",
    "gloriousMysteries": "Tajemnice Chwalebne",
    "gloriousMysteries1": "Zmartwychwstanie Pana Jezusa",
    "gloriousMysteries2": "Wniebowstąpienie",
    "gloriousMysteries3": "Zesłanie Ducha Świętego",
    "gloriousMysteries4": "Wniebowzięcie NMP",
    "gloriousMysteries5": "Ukoronowanie NMP na Królową Nieba i Ziemi",
    "luminousMysteries": "Tajemnice Światła",
    "luminousMysteries1": "Chrzest Pana Jezusa w Jordanie",
    "luminousMysteries2": "Objawienie Siebie na weselu w Kanie",
    "luminousMysteries3": "Głoszenie Królestwa Bożego i wzywanie do nawrócenia",
    "luminousMysteries4": "Przemienienie Siebie na górze Tabor",
    "luminousMysteries5": "Ustanowienie Eucharystii",
  };

  static Map<String, String> _enValues = {
    "appTitle": "NovenaApp",
    "aboutNovenaTitle": "About novena",
    "aboutNovenaText": "Here will be text describing history of Pompeii Novena",
    "yes": "Yes",
    "no": "No",
    "numberOfDaysToFinishNovena": "Number of days to the end of Novena:",
    "finishNovena": "Finish",
    "areYouSureToFinishNovena": "Are you sure that you want to finish Novena?",
    "finishBeforeEnd": "You will finish Novena before it end",
    "howToPrayTitle": "How to pray",
    "howToPrayYtUrl": "7UMbe3ayLhE",
    "startNovena": "Start Novena",
    "novenaScreenTitle": "Novena main screen",
    "petitionPrayer":
        "Blessed Lady of Pompeii, who has ever turned to you with confidence and has not been heard? You have never turned down any of your children, any of your worshippers, who were looking for your help, hear my plea, o Mother of the Word, and through your Holy Rosary and the Temple of Pompeii please look with favor on my devotion. Amen. ",
    "thanksgivingPrayer":
        "What have I to offer you, Oh, Queen, rich in mercy and magnificence? What remains of my life I dedicate to you, and to the propagating of your cult everywhere, Oh, Virgin of the Rosary of Pompeii, through whose invocation the grace of the Lord has visited me. I shall promote the devotion of your rosary; I shall tell everyone of the mercy you have obtained for me; I shall always proclaim your goodness towards me, so that others as well, unworthy as I and sinners, may turn to you with confidence. If all the world only knew how good you are, how compassionate with those who suffer, all creatures would turn to you. Amen. ",
    "prayer": "Prayer",
    "actualPrayerText_petition": "You're actual in petition part",
    "actualPrayerText_thanksgiving": "You're actual in thanksgiving part",
    "dateOfNovenaEnd": "End of novena date: %date\$s",
    "decadesToPrayToday": "Decades of rasary left to pray today:",
    "prayed": "I've prayed",
    "todayPrayer": "Today's prayer",
    "ok": "OK",
    "preyedAllDecades": "You have prayed already all decades for today!",
    "howToPrayHtml":
        "<br>Nowenna Pompejańska trwa 54 dni i składa się z dwóch części: błagalnej i dziękczynnej (każda po 27 dni). Każdego dnia nowenny odmawiamy conajmniej 3 części Różańca Świętego. Najczęściej są to tajemnice radosne, bolesne i chwalebne, ale niekoniecznie (patrz filmik).<br>Przed rozpoczęciem każdego z różańców podczas nowenny mówimy:<br><br><b>Ten różaniec odmawiam na Twoją cześć Królowo Różańca Świętego oraz w tej następującej intencji…</b><br><br>Ważne aby wybrać jedną konkretną intencję i trzymać się jej przez cały okres trwania nowenny.br>Każdy różaniec podczas nowenny kończymy trzykrotnym zawołaniem do Matki Bożej:<br><br><b>Królowo Różańca Świętego, módl się za nami!</b><br><br>Podczas części błagalnej, a więc pierwsze 27 dni po zakończeniu ostatniego różańca każdego dnia odmawiamy modlitwę:<br><br><b>Pomnij o miłosierna Panno Różańcowa z Pompejów, jako nigdy jeszcze nie słyszano, aby ktokolwiek z czcicieli Twoich, z Różańcem Twoim, pomocy Twojej wzywający, miał być przez Ciebie opuszczony. Ach, nie gardź prośbą moją, o Matko Słowa Przedwiecznego, ale przez święty Twój różaniec i przez  upodobanie, jakie okazujesz dla Twojej świątyni w Pompejach wysłuchaj mnie dobrotliwie. Amen.</b><br><br>Natomiast w drugiej części nowenny, dziękczynnej dziękujemy Maryi za otrzymane łaski następującą modlitwą:<br><br><b>Cóż Ci dać mogę, o Królowo pełna miłości? Moje całe życie poświęcam Tobie. Ile mi sił starczy, będę rozszerzać cześć Twoją, o Dziewico Różańca Świętego z Pompejów, bo gdy Twojej pomocy wezwałem, nawiedziła mnie łaska Boża. Wszędzie będę opowiadać o miłosierdziu, które mi wyświadczyłaś. O ile zdołam będę rozszerzać nabożeństwo do Różańca Świętego, wszystkim głosić będę, jak dobrotliwie obeszłaś się ze mną, aby i niegodni, tak jak i ja, grzesznicy, z zaufaniem do Ciebie się udawali. O, gdyby cały świat wiedział jak jesteś dobra, jaką masz litość nad cierpiącymi, wszystkie stworzenia uciekałyby się do Ciebie. Amen. </b><br><br><br>Więcej wątpliwości na temat samej nowenny oraz sposobu jej odmawiania może rozwiać ojciec Adam Szustak na poniższym filmiku:",
    "supportHtml":
        "<h5>Jeśli chcesz wesprzeć autora aplikacji to bardzo proszę, pomódl się w jego intencji! <br>Jeżeli natomiast uważasz, że aplikacja jest naprawdę dobra i chętnie zapłaciłbyś za nią albo wsparł jej rozwój finansowo, to bardzo proszę wpłać tę kwotę na dowolnie wybrany cel charytatywny :-)<br><br> Pozdrawiam,<br> Paweł Matysek</h5>",
    "joyfulMysteries": "Joyful Mystery",
    "joyfulMysteries1": "The Annunciation of the Lord to Mary",
    "joyfulMysteries2": "The Visitation of Mary to Elizabeth",
    "joyfulMysteries3": "The Nativity of our Lord Jesus Christ",
    "joyfulMysteries4": "The Presentation of our Lord",
    "joyfulMysteries5": "Finding Jesus in the Temple at age 12",
    "sorrowfulMysteries": "Sorroful Mystery",
    "sorrowfulMysteries1": "The Agony of Jesus in the Garden",
    "sorrowfulMysteries2": "The Scourging at the Pillar",
    "sorrowfulMysteries3": "Jesus is Crowned with Thorns",
    "sorrowfulMysteries4": "Jesus Carried the Cross",
    "sorrowfulMysteries5": "The Crucifixion of our Lord",
    "gloriousMysteries": "Glorious Mystery",
    "gloriousMysteries1": "The Resurrection of Jesus Christ",
    "gloriousMysteries2": "The Ascension of Jesus to Heaven",
    "gloriousMysteries3": "The Descent of the Holy Ghost",
    "gloriousMysteries4": "The Assumption of Mary into Heaven",
    "gloriousMysteries5": "Mary is Crowned as Queen of Heaven and Earth",
    "luminousMysteries": "Luminous Mystery",
    "luminousMysteries1": "The Baptism in the Jordan",
    "luminousMysteries2": "The Wedding at Cana",
    "luminousMysteries3": "The Proclamation of the Kingdom",
    "luminousMysteries4": "The Transfiguration",
    "luminousMysteries5": "The Institution of the Eucharist",
  };

  static Map<String, Map<String, String>> _allValues = {
    "pl": _plValues,
    "en": _enValues,
  };

  Resources(Locale locale) {
    this._locale = locale;
    _localizedValues = null;
  }

  Locale _locale;

  static Resources of(BuildContext context) {
    return Localizations.of<Resources>(context, Resources);
  }

  String _getText(String key) {
    return _localizedValues[key] ?? '** $key not found';
  }

  Locale get currentLocale => _locale;

  String get currentLanguage => _locale.languageCode;

  static Future<Resources> load(Locale locale) async {
    final translations = Resources(locale);
    _localizedValues = _allValues[locale.toString()];
    return translations;
  }
}

class ResourcesDelegate extends LocalizationsDelegate<Resources> {
  const ResourcesDelegate();

  static final Set<Locale> supportedLocals = {
    Locale('pl'),
    Locale('en'),
  };

  @override
  bool isSupported(Locale locale) => supportedLocals.contains(locale);

  @override
  Future<Resources> load(Locale locale) => Resources.load(locale);

  @override
  bool shouldReload(ResourcesDelegate old) => false;
}
