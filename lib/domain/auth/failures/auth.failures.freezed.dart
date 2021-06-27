// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides

part of 'auth.failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$AuthFailureTearOff {
  const _$AuthFailureTearOff();

  _EmailAlreadyInUse emailAlreadyInUse() {
    return const _EmailAlreadyInUse();
  }

  _InvalidEmailOnly invalidEmailOnly() {
    return const _InvalidEmailOnly();
  }

  _InvalidEmailAndPasswordCombination invalidEmailAndPasswordCombination() {
    return const _InvalidEmailAndPasswordCombination();
  }

  _ServerError serverError() {
    return const _ServerError();
  }
}

/// @nodoc
const $AuthFailure = _$AuthFailureTearOff();

/// @nodoc
mixin _$AuthFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailOnly,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailOnly,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailOnly value) invalidEmailOnly,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_ServerError value) serverError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailOnly value)? invalidEmailOnly,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthFailureCopyWith<$Res> {
  factory $AuthFailureCopyWith(
          AuthFailure value, $Res Function(AuthFailure) then) =
      _$AuthFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthFailureCopyWithImpl<$Res> implements $AuthFailureCopyWith<$Res> {
  _$AuthFailureCopyWithImpl(this._value, this._then);

  final AuthFailure _value;
  // ignore: unused_field
  final $Res Function(AuthFailure) _then;
}

/// @nodoc
abstract class _$EmailAlreadyInUseCopyWith<$Res> {
  factory _$EmailAlreadyInUseCopyWith(
          _EmailAlreadyInUse value, $Res Function(_EmailAlreadyInUse) then) =
      __$EmailAlreadyInUseCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmailAlreadyInUseCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$EmailAlreadyInUseCopyWith<$Res> {
  __$EmailAlreadyInUseCopyWithImpl(
      _EmailAlreadyInUse _value, $Res Function(_EmailAlreadyInUse) _then)
      : super(_value, (v) => _then(v as _EmailAlreadyInUse));

  @override
  _EmailAlreadyInUse get _value => super._value as _EmailAlreadyInUse;
}

/// @nodoc

class _$_EmailAlreadyInUse implements _EmailAlreadyInUse {
  const _$_EmailAlreadyInUse();

  @override
  String toString() {
    return 'AuthFailure.emailAlreadyInUse()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _EmailAlreadyInUse);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailOnly,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() serverError,
  }) {
    return emailAlreadyInUse();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailOnly,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailOnly value) invalidEmailOnly,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_ServerError value) serverError,
  }) {
    return emailAlreadyInUse(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailOnly value)? invalidEmailOnly,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (emailAlreadyInUse != null) {
      return emailAlreadyInUse(this);
    }
    return orElse();
  }
}

abstract class _EmailAlreadyInUse implements AuthFailure {
  const factory _EmailAlreadyInUse() = _$_EmailAlreadyInUse;
}

/// @nodoc
abstract class _$InvalidEmailOnlyCopyWith<$Res> {
  factory _$InvalidEmailOnlyCopyWith(
          _InvalidEmailOnly value, $Res Function(_InvalidEmailOnly) then) =
      __$InvalidEmailOnlyCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidEmailOnlyCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidEmailOnlyCopyWith<$Res> {
  __$InvalidEmailOnlyCopyWithImpl(
      _InvalidEmailOnly _value, $Res Function(_InvalidEmailOnly) _then)
      : super(_value, (v) => _then(v as _InvalidEmailOnly));

  @override
  _InvalidEmailOnly get _value => super._value as _InvalidEmailOnly;
}

/// @nodoc

class _$_InvalidEmailOnly implements _InvalidEmailOnly {
  const _$_InvalidEmailOnly();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailOnly()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _InvalidEmailOnly);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailOnly,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() serverError,
  }) {
    return invalidEmailOnly();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailOnly,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailOnly != null) {
      return invalidEmailOnly();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailOnly value) invalidEmailOnly,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_ServerError value) serverError,
  }) {
    return invalidEmailOnly(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailOnly value)? invalidEmailOnly,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailOnly != null) {
      return invalidEmailOnly(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailOnly implements AuthFailure {
  const factory _InvalidEmailOnly() = _$_InvalidEmailOnly;
}

/// @nodoc
abstract class _$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  factory _$InvalidEmailAndPasswordCombinationCopyWith(
          _InvalidEmailAndPasswordCombination value,
          $Res Function(_InvalidEmailAndPasswordCombination) then) =
      __$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>;
}

/// @nodoc
class __$InvalidEmailAndPasswordCombinationCopyWithImpl<$Res>
    extends _$AuthFailureCopyWithImpl<$Res>
    implements _$InvalidEmailAndPasswordCombinationCopyWith<$Res> {
  __$InvalidEmailAndPasswordCombinationCopyWithImpl(
      _InvalidEmailAndPasswordCombination _value,
      $Res Function(_InvalidEmailAndPasswordCombination) _then)
      : super(_value, (v) => _then(v as _InvalidEmailAndPasswordCombination));

  @override
  _InvalidEmailAndPasswordCombination get _value =>
      super._value as _InvalidEmailAndPasswordCombination;
}

/// @nodoc

class _$_InvalidEmailAndPasswordCombination
    implements _InvalidEmailAndPasswordCombination {
  const _$_InvalidEmailAndPasswordCombination();

  @override
  String toString() {
    return 'AuthFailure.invalidEmailAndPasswordCombination()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _InvalidEmailAndPasswordCombination);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailOnly,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() serverError,
  }) {
    return invalidEmailAndPasswordCombination();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailOnly,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailOnly value) invalidEmailOnly,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_ServerError value) serverError,
  }) {
    return invalidEmailAndPasswordCombination(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailOnly value)? invalidEmailOnly,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (invalidEmailAndPasswordCombination != null) {
      return invalidEmailAndPasswordCombination(this);
    }
    return orElse();
  }
}

abstract class _InvalidEmailAndPasswordCombination implements AuthFailure {
  const factory _InvalidEmailAndPasswordCombination() =
      _$_InvalidEmailAndPasswordCombination;
}

/// @nodoc
abstract class _$ServerErrorCopyWith<$Res> {
  factory _$ServerErrorCopyWith(
          _ServerError value, $Res Function(_ServerError) then) =
      __$ServerErrorCopyWithImpl<$Res>;
}

/// @nodoc
class __$ServerErrorCopyWithImpl<$Res> extends _$AuthFailureCopyWithImpl<$Res>
    implements _$ServerErrorCopyWith<$Res> {
  __$ServerErrorCopyWithImpl(
      _ServerError _value, $Res Function(_ServerError) _then)
      : super(_value, (v) => _then(v as _ServerError));

  @override
  _ServerError get _value => super._value as _ServerError;
}

/// @nodoc

class _$_ServerError implements _ServerError {
  const _$_ServerError();

  @override
  String toString() {
    return 'AuthFailure.serverError()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is _ServerError);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() emailAlreadyInUse,
    required TResult Function() invalidEmailOnly,
    required TResult Function() invalidEmailAndPasswordCombination,
    required TResult Function() serverError,
  }) {
    return serverError();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? emailAlreadyInUse,
    TResult Function()? invalidEmailOnly,
    TResult Function()? invalidEmailAndPasswordCombination,
    TResult Function()? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_EmailAlreadyInUse value) emailAlreadyInUse,
    required TResult Function(_InvalidEmailOnly value) invalidEmailOnly,
    required TResult Function(_InvalidEmailAndPasswordCombination value)
        invalidEmailAndPasswordCombination,
    required TResult Function(_ServerError value) serverError,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_EmailAlreadyInUse value)? emailAlreadyInUse,
    TResult Function(_InvalidEmailOnly value)? invalidEmailOnly,
    TResult Function(_InvalidEmailAndPasswordCombination value)?
        invalidEmailAndPasswordCombination,
    TResult Function(_ServerError value)? serverError,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class _ServerError implements AuthFailure {
  const factory _ServerError() = _$_ServerError;
}
