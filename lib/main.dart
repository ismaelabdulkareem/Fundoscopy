import 'package:flutter/material.dart';
import 'package:omvoting/login_page.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

Future<void> main() async {
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(
    const MaterialApp(
      //home: Splash(),
      home: LoginScreenClass(),
      debugShowCheckedModeBanner: false,
      title: "Voting App",
    ),
  );
}
