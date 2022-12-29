// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<TimeStruct>> convertJsonToDataTypeA(List<dynamic> json) async {
  // Add your function code here!
  List<TimeStruct> resultList = [];
  for (int i = 0; i < json.length; i++) {
    TimeStructBuilder data = new TimeStructBuilder();
    data.startHour = json[i]['openTime'];
    data.endHour = json[i]['endTime'];
    resultList.add(data.build());
  }
  return resultList;
}
