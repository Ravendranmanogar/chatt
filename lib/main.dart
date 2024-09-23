import 'package:chat/pages/login.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

void main() async{
  // WidgetsFlutterBinding.ensureInitialized();
  //await Firebase.initializeApp();
  runApp( const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chat',
      theme: ThemeData(
        brightness: Brightness.dark,
        //primarySwatch: Colors.blue,
        primaryColor: Color.fromRGBO(42, 117, 188, 1),
        scaffoldBackgroundColor: Color.fromRGBO(28, 27, 27, 1),

      ),
      home: const LoginPage(),
    );
  }
}

