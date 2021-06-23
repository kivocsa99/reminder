import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:reminder/presentation/Widgets/button.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Image.asset(
          'images/app_icon.png',
          width: 300,
          height: 200,
        ),
        SizedBox(
          height: 50,
        ),
        Center(
            child: Text(
          "Welcome!",
          style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
        )),

        SizedBox(
          height: 10,
        ),
        Button(
            text: "LOGIN",
            onPress:
                () {}), //Navigator.of(context).pushReplacementNamed('login')),
        Button(
          text: "SINGUP",
          onPress:
              () {}, //Navigator.of(context).pushReplacementNamed('signup')),
          color: Colors.white,
          textColor: Colors.blue,
        ),
      ]),
    );
  }
}
