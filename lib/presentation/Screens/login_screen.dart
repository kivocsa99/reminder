import 'package:flutter/material.dart';
import 'package:reminder/presentation/Widgets/button.dart';
import 'package:reminder/presentation/Widgets/inputField.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome Back.",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          SizedBox(height: 40),
          InputField(
            text: 'Enter Email Address',
            icon: Icon(Icons.email),
          ),
          SizedBox(
            height: 10,
          ),
          InputField(
            text: 'Enter Password',
            icon: Icon(Icons.lock),
          ),
          SizedBox(
            height: 20,
          ),
          Button(text: "LOGIN", onPress: () {}),
        ],
      ),
    );
  }
}
