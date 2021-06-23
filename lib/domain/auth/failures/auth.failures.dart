import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:reminder/domain/core/i.failure.dart';

part 'auth.failures.freezed.dart';
@freezed
abstract class AuthFailure with _$AuthFailure implements IFailure{
  const factory AuthFailure.emailAlreadyInUse() = _EmailAlreadyInUse;
  const factory AuthFailure.invalidEmailAndPasswordCombination()=_InvalidEmailAndPasswordCombination;
  const factory AuthFailure.serverError() = _ServerError;
}