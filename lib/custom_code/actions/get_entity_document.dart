// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'dart:js' as js;

Future getEntityDocument() async {
  String entity_key = js.context['location']['href'];
  FirebaseFirestore.instance
      .collection('users')
      .where("entity_key", isEqualTo: entity_key)
      .get()
      .then((value) {
    FFAppState().logoURL = value.docs[0]["logo_icon"];
    FFAppState().primaryBtnColor = value.docs[0]["btn_color"];
  });
  return;
}
