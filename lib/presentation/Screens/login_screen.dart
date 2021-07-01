import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reminder/application/auth/use_cases/sign_up_with_email_and_password/sign_up_with_email_and_password.input.dart';
import 'package:reminder/application/auth/use_cases/sign_up_with_email_and_password/sign_up_with_email_and_password.usecase.dart';
import 'package:reminder/application/auth/use_cases/sing_in_with_email_and_password/sign_in_with_email_and_password.input.dart';
import 'package:reminder/application/auth/use_cases/sing_in_with_email_and_password/sign_in_with_email_and_password.usecase.dart';
import 'package:reminder/presentation/Widgets/button.dart';
import 'package:reminder/presentation/Widgets/inputField.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';


class LoginScreen extends HookWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formkey = useState(GlobalKey<FormState>());
    final _pass = useTextEditingController(text: "");
    final _email = useTextEditingController(text: "");

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Welcome Back.",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              SizedBox(height: 40),
              InputField(
                controller: _email,
                label: 'Enter Email Address',
                iconData: Icons.email,
              ),
              SizedBox(
                height: 10,
              ),
              InputField(
                obscureText: true,
                controller: _pass,
                label: 'Enter Password',
                iconData:Icons.lock,
              ),
              SizedBox(
                height: 20,
              ),
              Button(text: "LOGIN", onPress: ()async {
                if(_formkey.value.currentState!.validate()){
                  final result = await context.read(signInWithEmailAndPasswordUseCaseProvider).execute(SignInWithEmailAndPasswordUseCaseInput(
                    email: _email.text,password: _pass.text
                  ));
                  result.fold((failure) => print(failure.toString()) , (r) => print("sucsses"));
                }
              }),
            ],
          ),
        ),
      ),
    );
  }
}
