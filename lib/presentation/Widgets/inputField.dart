import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({
    Key? key,
    required this.text,
    required this.icon,
  }) : super(key: key);

  final String text;
  final Icon icon;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.lightBlue[50], borderRadius: BorderRadius.circular(29)),
      width: size.width * 0.8,
      child: TextField(
          style: TextStyle(color: Colors.black, fontSize: 15.0),
          decoration: InputDecoration(
            icon: icon,
            border: InputBorder.none,
            errorStyle: TextStyle(color: Colors.red, fontSize: 15.0),
            labelText: text,
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          )),
    );
  }
}
