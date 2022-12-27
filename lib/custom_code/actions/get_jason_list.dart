// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> getJasonList(
  List<dynamic> localJsonList,
  int indexNumber,
  String addingData,
) async {
  // Add your function code here!
  for (int i = 0; i < localJsonList.length; i++) {
    if (i == indexNumber) {
      localJsonList[i]['openTime'] = addingData;
    }
  }
  print(localJsonList);
  return localJsonList;
}
