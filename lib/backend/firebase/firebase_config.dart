import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyCbEx3XbKNVwPA_9IiR0QIva6SOWbclKGA",
            authDomain: "tourex-ac7ea.firebaseapp.com",
            projectId: "tourex-ac7ea",
            storageBucket: "tourex-ac7ea.appspot.com",
            messagingSenderId: "793487298247",
            appId: "1:793487298247:web:e50abbdeb7401ac75078e2",
            measurementId: "G-MT09S3CD6X"));
  } else {
    await Firebase.initializeApp();
  }
}
