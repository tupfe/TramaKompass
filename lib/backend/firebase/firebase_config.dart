import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCMwQBP8ZqadL2llsxfTybRWmZXmqhZbIk",
            authDomain: "traumakompass.firebaseapp.com",
            projectId: "traumakompass",
            storageBucket: "traumakompass.firebasestorage.app",
            messagingSenderId: "110207229566",
            appId: "1:110207229566:web:4b3b99a063a4c64ddb022f",
            measurementId: "G-7MW2PGLW7K"));
  } else {
    await Firebase.initializeApp();
  }
}
