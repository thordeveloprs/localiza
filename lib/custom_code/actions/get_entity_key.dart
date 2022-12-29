// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '../../flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:js' as js;

String getEntityKey() {
  // Add your function code here!
  String entity_key = js.context['location']['href'];
  String key = entity_key.split(".")[0].split("//")[1];
  print(key);
  if (key == 'burgerkinguk') {
    return 'burgerkinguk';
  } else {
    return 'starbucks';
  }
}
