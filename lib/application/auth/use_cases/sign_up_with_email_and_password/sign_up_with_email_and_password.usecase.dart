import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reminder/application/auth/use_cases/sign_up_with_email_and_password/sign_up_with_email_and_password.input.dart';
import 'package:reminder/application/core/use_cases/i.use_case.dart';
import 'package:reminder/application/providers/auth.facade.provider.dart';
import 'package:reminder/application/user/use_cases/create_user/create_user_case.dart';
import 'package:reminder/domain/auth/contracts/i.auth.facade.dart';
import 'package:reminder/domain/core/i.failure.dart';
import 'package:reminder/domain/models/usermodel.dart';
final signUpWithEmailAndPasswordUseCaseProvider = Provider((ref)=>SignUpWithEmailAndPasswordUseCase(authFacde: ref.watch(authFacadeProvider),read: ref.read));
class SignUpWithEmailAndPasswordUseCase
    implements IUseCase<SignUpWithEmailAndPasswordUseCaseInput, Unit> {
  final IAuthFacde? _authFacde;
  final Reader? _read;
  SignUpWithEmailAndPasswordUseCase({IAuthFacde? authFacde, Reader? read})
      : _authFacde = authFacde,
        _read = read;

  @override
  Future<Either<IFailure, Unit>> execute(input) async{
    final result = await _authFacde!.signUpWithEmailAndPassword(email: input.user!.email, password: input.password!);
    return result.fold((failure) => left(failure), (uid) => _read!(createUserUseCaseProvider).execute(input.user!.copyWith(id:uid)));
  }
        
}
