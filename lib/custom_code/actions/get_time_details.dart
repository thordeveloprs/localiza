// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<TimeStruct>> getTimeDetails(List<dynamic> timeJson) async {
  // Add your function code here!
  var b = [];
  print(timeJson);

  for (int i = 0; i < timeJson.length; i++) {
    b.add(getTimeList(timeJson[i], 'openTime'));
  }

  print('---B $b');

  int i, j;
  for (i = 0; i < b.length - 1; i++) {
    for (j = 0; j < b.length - i - 1; j++) {
      if (b[j] > b[j + 1]) {
        var temp = b[j];
        b[j] = b[j + 1];
        b[j + 1] = temp;

        temp = timeJson[j];
        timeJson[j] = timeJson[j + 1];
        timeJson[j + 1] = temp;
      }
    }
  }

  //print(b);
  print('Sorted Result:-- $timeJson');

  var opTime;
  var enTime;
  var newList = [];
  List<TimeStruct> resultList = [];
  int p = 0;

  for (int i = 0; i < timeJson.length; i++) {
    if (p == 0) {
      opTime = timeJson[i]['openTime'];
      enTime = timeJson[i]['endTime'];
      p = 1;
    }

    if (i + 1 == timeJson.length) {
      newList.add({"openTime": opTime, "endTime": enTime});
    } else {
      int NextOpTime = getInt(timeJson[i + 1]['openTime']);
      int NextEnTime = getInt(timeJson[i + 1]['endTime']);
      int curEnTime = getInt(enTime);
      if (NextOpTime > curEnTime) {
        newList.add({"openTime": opTime, "endTime": enTime});
        TimeStructBuilder data = new TimeStructBuilder();
        data.startHour = opTime;
        data.endHour = enTime;
        resultList.add(data.build());
        p = 0;
      } else {
        if (curEnTime < NextEnTime) {
          enTime = timeJson[i + 1]['endTime'];
        }
      }
    }
  }
  print(newList);
  return resultList;
}

int getInt(var s) {
  var c = s;
  var d;
  var e;
  if (c != null) {
    d = c.split(':');
  }
  if (d[1] != null) {
    e = d[1].split(' ');
  }
//     print(d);
//     print(e);
  var number = d[0] + e[0];
//     print(number);
  if (d[1][3] == 'P') {
    number = int.parse(number) + 1200;
  } else {
    number = int.parse(number);
  }
  return number;
}

int getTimeList(var object, String key) {
  var time = object[key];
  var amPm = time[time.length - 2];
  var timeOnly = time.substring(0, time.length - 3);
  var timeArray = timeOnly.split(":");
  var number = timeArray[0] + timeArray[1];
  if (amPm[0] == 'P') {
    return int.parse(number) + 1200;
  } else {
    return int.parse(number);
  }
}
