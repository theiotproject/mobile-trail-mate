// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<dynamic>> getUsersDataByUids(List<String> usersIDs) async {
  // get all docs which id match usersIDs, return list of json
// Define the Firestore instance and collection
  final FirebaseFirestore firestore = FirebaseFirestore.instance;
  final CollectionReference usersCollection = firestore.collection('users');

// Create a query to get all documents where the id matches any of the given user IDs
  Query query = usersCollection.where(FieldPath.documentId, whereIn: usersIDs);

// Execute the query and get the documents
  QuerySnapshot querySnapshot = await query.get();

// Map the documents to a list of JSON objects
  List<dynamic> usersData =
      querySnapshot.docs.map((doc) => doc.data()).toList();

// Return the list of JSON objects
  return usersData;
}
