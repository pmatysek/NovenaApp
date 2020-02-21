import 'package:novena/classes/novena.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:novena/util/date.dart';

class NovenaRepository {

  static final String novenaStartDateMillisKey = "NOVENA_START_DATE_MILLIS";
  static final String decadesToPrayKey = "DECADES_TO_PRAY_TODAY";
  static final String todayDate = "TODAY_DATE";

  static Future<Novena> getCurrentNovena() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    DateTime startDate = Date.fromMillis(prefs.getInt(novenaStartDateMillisKey));
    if(startDate == null){
      return null;
    }
    int decadesToPrayToday;
    DateTime actualDate = Date.fromMillis(prefs.getInt(todayDate));
    if(actualDate.difference(Date.now()).inDays == 0){
      decadesToPrayToday = prefs.getInt(decadesToPrayKey);
    }
    if(decadesToPrayToday == null){
      decadesToPrayToday = 15;
    }

    Novena novena = Novena(startDate, decadesToPrayToday);
    return saveNovena(novena);
  }

  static Future<Novena> saveNovena(Novena novena) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    if(novena != null && novena.isStarted()){
      prefs.setInt(novenaStartDateMillisKey, novena.novenaStartDate.millisecondsSinceEpoch);
      prefs.setInt(decadesToPrayKey , novena.decadesToPray);
      prefs.setInt(todayDate , Date.now().millisecondsSinceEpoch);
    } else {
      prefs.clear();
    }
    return novena;
  }

}