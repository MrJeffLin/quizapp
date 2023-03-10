import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyAWxXAD_SSFFcorzs55P1EW90cO7n0cGOo",
            authDomain: "quizapp1-a211d.firebaseapp.com",
            projectId: "quizapp1-a211d",
            storageBucket: "quizapp1-a211d.appspot.com",
            messagingSenderId: "913512622494",
            appId: "1:913512622494:web:ee372cdda1214f0de48e8f",
            measurementId: "G-1MQ5DLLB8E"));
  } else {
    await Firebase.initializeApp();
  }
}
