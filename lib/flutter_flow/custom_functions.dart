import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/backend.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '/auth/firebase_auth/auth_util.dart';

String? getAverageRate(
  int? rating,
  int? rates,
) {
  // divide rating by rates, convert to string, handle when rates are zero and return zero
  if (rates == 0) {
    return '0';
  } else {
    double average = rating! / rates!;
    return average.toStringAsFixed(1);
  }
}
