import 'package:flutter/material.dart';
import 'package:reminder/presentation/Widgets/button.dart';
import 'package:reminder/presentation/Widgets/inputField.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Sign Up",
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
          SizedBox(height: 40),
          InputField(
            text: 'Enter User Name',
            icon: Icon(Icons.person),
          ),
          SizedBox(
            height: 10,
          ),
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
          Button(text: "SIGNUP", onPress: () {}),
        ],
      ),
    );
  }
}
