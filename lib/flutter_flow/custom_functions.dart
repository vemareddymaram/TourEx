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
import '/backend/schema/structs/index.dart';
import '/auth/firebase_auth/auth_util.dart';

String? usersAtSameLocation() {
  // function to show the users within a same location
// First, we need to retrieve the current user's location from their profile
  var userPosition;
  final currentUserLocation = FFPlace(
    latLng: LatLng(
        userPosition.latitude,
        userPosition
            .longitude), // example location, replace with actual location
    name: 'user_location',
  );

  // Then, we can query the Firestore database for other users who are also at this location
  final usersAtLocation = FirebaseFirestore.instance
      .collection('users')
      .where('user_location', isEqualTo: currentUserLocation.toString())
      .get();

  // Finally, we can display the list of users at the same location
  return usersAtLocation.toString();
}
