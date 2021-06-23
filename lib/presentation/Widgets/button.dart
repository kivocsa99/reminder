import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.text,
    required this.onPress,
    this.color = Colors.blue,
    this.borderColor = Colors.blue,
    this.textColor = Colors.white,
  }) : super(key: key);

  final String text;
  final Color color, borderColor, textColor;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.6,
      child: TextButton(
          clipBehavior: Clip.antiAliasWithSaveLayer,
          onPressed: onPress(),
          style: TextButton.styleFrom(
              backgroundColor: color,
              side: BorderSide(color: borderColor, width: 0.8),
              elevation: 1.0,
              shape: BeveledRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(5)))),
          child: Text(
            text,
            style: TextStyle(color: textColor),
          )),
    );
  }
}
