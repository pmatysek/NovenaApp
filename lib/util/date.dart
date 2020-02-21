import 'package:intl/intl.dart';


class Date {
  static DateTime now() {
    return _trunc(DateTime.now());
  }

  static DateTime fromMillis(int millis){
    if (millis == null) {
      return null;
    }
    return _trunc(DateTime.fromMillisecondsSinceEpoch(millis));
  }

  static DateTime yesterday(){
    return Date.now().subtract(Duration(days: 1));
  }

  static DateTime _trunc(DateTime dateTime){
    return DateTime(dateTime.year, dateTime.month, dateTime.day);
  }

  static String getFormattedDate(DateTime date){
    return DateFormat('dd.MM.yyyy').format(date);
  }
}
