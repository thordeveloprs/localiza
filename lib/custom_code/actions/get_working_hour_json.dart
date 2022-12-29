// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<dynamic> getWorkingHourJson(WorkingHoursRecord workingHourDoc) async {
  // Add your function code here!

  dynamic json = {
    "mon": getValue(workingHourDoc.monTimingList!),
    "tues": getValue(workingHourDoc.tuesTimingList!),
    "weds": getValue(workingHourDoc.wedTimingList!),
    "thus": getValue(workingHourDoc.thusTimingList!),
    "fri": getValue(workingHourDoc.friTimingList!),
    "sat": getValue(workingHourDoc.satTimingList!),
    "sun": getValue(workingHourDoc.sunTimingList!)
  };
  print(json);
  return json;
}

List<dynamic> getValue(var timeList) {
  List<dynamic> result = [];
  for (int i = 0; i < timeList.length; i++) {
    result.add({
      "openTime": timeList[i].startHour,
      "endTime": timeList[i].endHour,
    });
  }
  return result;
}
