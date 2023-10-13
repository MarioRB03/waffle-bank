import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDNmTrFy4qFQaAkacanYGNUBi__sqSdCtM",
            authDomain: "wafflebank-b80a2.firebaseapp.com",
            projectId: "wafflebank-b80a2",
            storageBucket: "wafflebank-b80a2.appspot.com",
            messagingSenderId: "695646079751",
            appId: "1:695646079751:web:ad8776d387093cc40253a2",
            measurementId: "G-DV2EGT318Z"));
  } else {
    await Firebase.initializeApp();
  }
}
