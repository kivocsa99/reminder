import 'package:dartz/dartz.dart';
import 'package:reminder/application/auth/use_cases/sing_in_with_email_and_password/sign_in_with_email_and_password.input.dart';
import 'package:reminder/application/core/use_cases/i.no_input_use_case.dart';
import 'package:reminder/domain/auth/contracts/i.auth.facade.dart';
import 'package:reminder/domain/core/i.failure.dart';

class SignInWithEmailAndPasswordUseCase
    implements IUseCase<SignInWithEmailAndPasswordUseCaseInput, Unit> {
  final IAuthFacde? _authFacde;

  SignInWithEmailAndPasswordUseCase({IAuthFacde? authFacde})
      : _authFacde = authFacde;
  @override
  Future<Either<IFailure, Unit>> execute(input)async {
    return await _authFacde!.signInWithEmailAndPassword(email: input.email, password: input.password);
  }
}
