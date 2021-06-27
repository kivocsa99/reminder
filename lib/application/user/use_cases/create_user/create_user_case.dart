import 'package:dartz/dartz.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reminder/application/core/use_cases/i.use_case.dart';
import 'package:reminder/application/providers/user.repository.provider.dart';
import 'package:reminder/domain/core/i.failure.dart';
import 'package:reminder/domain/models/usermodel.dart';
import 'package:reminder/domain/user/contracts/i.user.repository.dart';

final createUserUseCaseProvider = Provider(
  (ref) => CreateUserUseCase(
    userRepository: ref.watch(userRepositoryProvider),
  ),
);

class CreateUserUseCase implements IUseCase<UserModel, Unit> {
  final IUserRepository? _userRepository;

  CreateUserUseCase({IUserRepository? userRepository})
      : _userRepository = userRepository;

  @override
  Future<Either<IFailure, Unit>> execute(input) {
    return _userRepository!.save(user: input);
  }
}
