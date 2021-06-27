import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class InputField extends HookWidget {
  final TextEditingController? controller;
  final String? label;
  final IconData? iconData;
  final bool obscureText;
  final String? Function(String?)? validator;
  final ValueChanged<String>? onChanged;
  const InputField({
    Key? key,
    this.controller,
    this.obscureText = false,
    this.iconData,
    this.onChanged,
    this.validator,
    this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final hidden = useState(obscureText);
    Size size = MediaQuery.of(context).size;
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      decoration: BoxDecoration(
          color: Colors.lightBlue[50], borderRadius: BorderRadius.circular(29)),
      width: size.width * 0.8,
      child: TextFormField(
          onChanged: onChanged,
          validator: validator,
          obscureText: obscureText,
          controller: controller,
          style: TextStyle(color: Colors.black, fontSize: 15.0),
          decoration: InputDecoration(
            suffixIcon: obscureText
                ? IconButton(
                    onPressed: () => hidden.value = !hidden.value,
                    icon: Icon(
                        hidden.value ? Icons.visibility_off : Icons.visibility))
                : const SizedBox.shrink(),
            icon: Icon(iconData),
            border: InputBorder.none,
            errorStyle: TextStyle(color: Colors.red, fontSize: 15.0),
            labelText: label,
            labelStyle: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 15.0,
            ),
          )),
    );
  }
}
