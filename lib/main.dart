import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:untitled/FilmScreen.dart';
import 'package:untitled/OrderScreen.dart';
import 'package:untitled/WelcomeScreen.dart';
import 'package:untitled/register2.dart';
import 'package:untitled/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:untitled/start.dart';
import 'package:untitled/try.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';
import 'package:flutter/src/material/colors.dart';
import 'package:url_launcher/url_launcher.dart';

import 'Store.dart';
Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.brown,
      ),
     home: Start(),

    );
  }
}


