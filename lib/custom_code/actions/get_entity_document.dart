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

Future<bool> getEntityDocument() async {
  String entity_key = js.context['location']['href'];
  print("Entity_key-" + entity_key);
  FirebaseFirestore.instance
      .collection('entities')
      .where("entity_key", isEqualTo: 'burgerking')
      .get()
      .then((value) {
    //print("Logo:-"+value.docs[0]["logo_icon"]);
    FFAppState().logoURL = value.docs[0]["logo_icon"];
    FFAppState().primaryBtnColor = value.docs[0]["btn_color"];
    return true;
  });
  return false;
}
