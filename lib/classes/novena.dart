import 'package:flutter/material.dart';
import 'package:novena/util/considerations.dart';
import 'package:novena/util/date.dart';
import '../resources.dart';


class Novena {
  DateTime _novenaStartDate;

  int _decadesToPray;

  ConsiderationType _considerationType;

  DateTime get novenaStartDate => _novenaStartDate;

  int get novenaDay => Date.now().difference(_novenaStartDate).inDays;

  DateTime get finishDate => _novenaStartDate.add(Duration(days: 53));

  String get formattedDate => Date.getFormattedDate(finishDate);

  int get daysToFinish => 54 - novenaDay;

  int get decadesToPray => _decadesToPray;

  ConsiderationType get considerationType => _considerationType;

  Novena(this._novenaStartDate, this._decadesToPray, this._considerationType);

  static Novena startNovena(DateTime startDate, ConsiderationType considerationType) {
    return Novena(startDate, 15, considerationType);
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
