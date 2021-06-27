import 'package:reminder/domain/models/usermodel.dart';

class SignUpWithEmailAndPasswordUseCaseInput {
  final UserModel? user;
  final String? password;

  SignUpWithEmailAndPasswordUseCaseInput({
    this.user,
     this.password
     });
}
