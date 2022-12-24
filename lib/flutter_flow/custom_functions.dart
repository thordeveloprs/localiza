import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import '../backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../auth/auth_util.dart';

dynamic getHnW(int index) {
  if (index == 0) {
    return {"w": 50, "h": 45};
  }
  if (index == 1) {
    return {"w": 50, "h": 90};
  }

  if (index == 2) {
    return {"w": 50, "h": 90};
  }
  if (index == 3) {
    return {"w": 50, "h": 45};
  }
}

Color getColor(Color? value) {
  return value!;
}
