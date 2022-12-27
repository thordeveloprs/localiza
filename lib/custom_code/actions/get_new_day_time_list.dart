// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> getNewDayTimeList(
  List<dynamic> jsonList,
  int indexNumber,
  String timeData,
  String flag,
) async {
  // Add your function code here!
  if (flag == 'openTime') {
    for (int i = 0; i < jsonList.length; i++) {
      if (i == indexNumber) {
        jsonList[i]['openTime'] = timeData;
        print("openTime");
        print(timeData);
      }
    }
  }
  if (flag == 'endTime') {
    for (int i = 0; i < jsonList.length; i++) {
      if (i == indexNumber) {
        jsonList[i]['endTime'] = timeData;
        print("endTime");
        print(timeData);
      }
    }
  }
  print(jsonList);
  return jsonList;
}
