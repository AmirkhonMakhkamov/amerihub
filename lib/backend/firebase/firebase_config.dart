import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyB4dXC8xATaeeBbJT-DrJoIA5unJWDKkE4",
            authDomain: "amerihub.firebaseapp.com",
            projectId: "amerihub",
            storageBucket: "amerihub.appspot.com",
            messagingSenderId: "542274328975",
            appId: "1:542274328975:web:2cbe162e9d02ed0b0ed3fa",
            measurementId: "G-0SB3CQ6ZWF"));
  } else {
    await Firebase.initializeApp();
  }
}
