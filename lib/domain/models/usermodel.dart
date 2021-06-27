import 'package:freezed_annotation/freezed_annotation.dart';
part 'usermodel.freezed.dart';
part 'usermodel.g.dart';

@freezed
abstract class UserModel implements _$UserModel {
  const factory UserModel({
    @Default("") String id,
    @Default("") String name,
    @Default("") String email,
  }) = _UserModel;
  const UserModel._();
  factory UserModel.fromJson(Map<String, dynamic> json) =>
      _$UserModelFromJson(json);
}
