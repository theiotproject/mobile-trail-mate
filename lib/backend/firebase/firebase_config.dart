import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD8vnufU__AvydKJg9YP9dYpJC8oOu6jbo",
            authDomain: "endurobb-db.firebaseapp.com",
            projectId: "endurobb-db",
            storageBucket: "endurobb-db.appspot.com",
            messagingSenderId: "783205086140",
            appId: "1:783205086140:web:9df6a961658bc5864b71b9",
            measurementId: "G-4T8HFZ29R1"));
  } else {
    await Firebase.initializeApp();
  }
}
