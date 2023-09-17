// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// DO NOT REMOVE OR MODIFY THE CODE ABOVE
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

Future<void> updateDisplayName(String userID, String displayName) async {
  try {
    User? user = FirebaseAuth.instance.currentUser;
    if (user != null) {
      // Update the display name in Firebase Auth
      await user.updateDisplayName(displayName);
      print("Display Name updated successfully");

      // Update the "display_name" field in the Firestore document
      await FirebaseFirestore.instance.collection('users').doc(userID).update({
        'display_name': displayName,
      });

      print("Firestore 'display_name' field updated successfully");
    } else {
      print("User not found");
    }
  } catch (e) {
    print("Error updating Display Name: $e");
    // Handle the error as needed
  }
}
