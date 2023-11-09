import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyBQ5D-F3eGKWtXQNj2_KrbFRtIncNm_ai4",
            authDomain: "tourex-9537f.firebaseapp.com",
            projectId: "tourex-9537f",
            storageBucket: "tourex-9537f.appspot.com",
            messagingSenderId: "698518780741",
            appId: "1:698518780741:web:f368a746e5de96fe1f1c2c"));
  } else {
    await Firebase.initializeApp();
  }
}
