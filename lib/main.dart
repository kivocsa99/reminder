import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:reminder/ui/Screens/login_screen.dart';
import 'package:reminder/ui/Screens/signup_screen.dart';
import 'package:reminder/ui/Screens/welcome_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        'welcome': (context) => WelcomeScreen(),
        'login': (context) => LoginScreen(),
        'signup': (context) => SignupScreen(),
      },
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: WelcomeScreen(),
    );
  }
}
