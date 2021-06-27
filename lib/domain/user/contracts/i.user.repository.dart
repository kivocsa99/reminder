import 'package:dartz/dartz.dart';
import 'package:reminder/domain/models/usermodel.dart';
import 'package:reminder/domain/user/failures/user.failures.dart';

abstract class IUserRepository{
  Future<Either<UserFailures, Unit>> save({
    required UserModel user,
  });
}