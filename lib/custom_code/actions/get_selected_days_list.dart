// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> getSelectedDaysList(
  bool sun,
  bool mon,
  bool tue,
  bool wed,
  bool thu,
  bool fri,
  bool sat,
) async {
  // Add your function code here!
  List<String> daysList = [];
  if (sun) {
    daysList.add('sun');
  }
  if (mon) {
    daysList.add('mon');
  }
  if (tue) {
    daysList.add('tues');
  }
  if (wed) {
    daysList.add('weds');
  }
  if (thu) {
    daysList.add('thus');
  }
  if (fri) {
    daysList.add('fri');
  }
  if (sat) {
    daysList.add('sat');
  }
  return daysList;
}
