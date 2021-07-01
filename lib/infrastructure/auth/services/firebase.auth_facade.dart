import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:reminder/domain/auth/contracts/i.auth.facade.dart';
import 'package:reminder/domain/auth/failures/auth.failures.dart';

class FirebaseAuthFacade implements IAuthFacde {
  FirebaseAuth _auth = FirebaseAuth.instance;
  static const String inValidPassword = "wrong-password";
  static const String inValidEmail = "user-not-found";
  static const String inUse = "email-already-in-use";
  static const String servererror = "server-error";
  String get currentUserId => _auth.currentUser!.uid;
  @override
  Future<Either<AuthFailure, String>> signUpWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      final credentials = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      return right(credentials.user!.uid);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case inValidEmail:
          return left(AuthFailure.invalidEmail());
        case inUse:
          return left(AuthFailure.emailAlreadyInUse());
        default:
          return left(AuthFailure.serverError());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      return right(unit);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case inUse:
          return left(AuthFailure.emailAlreadyInUse());
        case inValidPassword:
          return left(AuthFailure.invalidPassword());
        default:
          return left(AuthFailure.emailAlreadyInUse());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> forgotPassword(
      {required String email}) async {
    try {
      await _auth.sendPasswordResetEmail(email: email);
      return right(unit);
    } on FirebaseAuthException catch (error) {
      switch (error.code) {
        case inValidEmail:
          return left(AuthFailure.invalidEmail());
        case servererror:
          return left(AuthFailure.serverError());
        default:
          return left(AuthFailure.invalidEmail());
      }
    }
  }

  @override
  Future<Either<AuthFailure, Unit>> signOut() async {
    await _auth.signOut();
    return right(unit);
  }
}
