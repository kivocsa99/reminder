import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:reminder/application/auth/use_cases/sign_up_with_email_and_password/sign_up_with_email_and_password.input.dart';
import 'package:reminder/application/auth/use_cases/sign_up_with_email_and_password/sign_up_with_email_and_password.usecase.dart';
import 'package:reminder/domain/models/usermodel.dart';
import 'package:reminder/presentation/Widgets/button.dart';
import 'package:reminder/presentation/Widgets/inputField.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SignupScreen extends HookWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _formkey = useState(GlobalKey<FormState>());
    final _pass = useTextEditingController(text: "");
    final _user = useState(UserModel());

    return Scaffold(
      body: SingleChildScrollView(
        child: Form(
          key: _formkey.value,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Sign Up",
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold)),
              SizedBox(height: 40),
              InputField(
                label: 'Enter User Name',
                iconData: Icons.person,
                onChanged: (name) =>
                    _user.value = _user.value.copyWith(name: name),
              ),
              SizedBox(
                height: 10,
              ),
              InputField(
                label: 'Enter Email Address',
                iconData: Icons.email,
                onChanged: (email) =>
                    _user.value = _user.value.copyWith(email: email),
              ),
              SizedBox(
                height: 10,
              ),
              InputField(
                label: 'Enter Password',
                iconData: Icons.lock,
                controller: _pass,
                obscureText: true,
              ),
              SizedBox(
                height: 20,
              ),
              Button(
                  text: "SIGNUP",
                  onPress: () async {
                    if(_formkey.value.currentState!.validate()) {
                     await context
                        .read(signUpWithEmailAndPasswordUseCaseProvider)
                        .execute(SignUpWithEmailAndPasswordUseCaseInput(
                          password: _pass.text, user: _user.value
                        )).then((result) => result.fold((failure) => print(failure.toString()), (r) => print("sucsses")));
                    }
                   
                  }),
            ],
          ),
        ),
      ),
    );
  }
}
