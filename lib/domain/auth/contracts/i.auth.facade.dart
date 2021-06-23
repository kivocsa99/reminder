import 'package:dartz/dartz.dart';
import 'package:reminder/domain/auth/failures/auth.failures.dart';

abstract class IAuthFacde{
  Future<Either<AuthFailure, String>> signUpWithEmailAndPassword({
    required String email,
    required String password,
  });
    Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required String  email,
    required String password,
  });
    Future<Either<AuthFailure, Unit>> signOut();
    Future<Either<AuthFailure, Unit>> forgotPassword({
    required String email,
  });

}