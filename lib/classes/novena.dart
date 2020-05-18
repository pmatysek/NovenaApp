import 'package:flutter/material.dart';
import 'package:novena/util/date.dart';
import '../resources.dart';


class Novena {
  DateTime _novenaStartDate;

  int _decadesToPray;

  DateTime get novenaStartDate => _novenaStartDate;

  int get novenaDay => Date.now().difference(_novenaStartDate).inDays;

  DateTime get finishDate => _novenaStartDate.add(Duration(days: 53));

  String get formattedDate => Date.getFormattedDate(finishDate);

  int get daysToFinish => 54 - novenaDay;

  int get decadesToPray => _decadesToPray;
  Novena(this._novenaStartDate, this._decadesToPray);

  static Novena startNovenaFromDate(DateTime startDate) {
    return Novena(startDate, 15);
  }

  void finishNovena() {
    _novenaStartDate = null;
  }

  void prayDecades(int prayedDecades){
    _decadesToPray -= prayedDecades;
  }
  bool isStarted() {
    return _novenaStartDate != null;
  }

  String getPrayerText(BuildContext context){
    return novenaDay > 27 ? Resources.of(context).thanksgivingPrayer : Resources.of(context).petitionPrayer;
  }
}
