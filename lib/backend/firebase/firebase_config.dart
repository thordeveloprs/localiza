import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyA0pp1yzi902cbS0eCgFECsVp09lw6t8BQ",
            authDomain: "manager-app-f75a4.firebaseapp.com",
            projectId: "manager-app-f75a4",
            storageBucket: "manager-app-f75a4.appspot.com",
            messagingSenderId: "890321468274",
            appId: "1:890321468274:web:5f632ceb568d44cc18bbeb"));
  } else {
    await Firebase.initializeApp();
  }
}
