import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:reminder/domain/auth/contracts/i.auth.facade.dart';
import 'package:reminder/domain/models/usermodel.dart';
import 'package:dartz/dartz.dart';
import 'package:reminder/domain/user/contracts/i.user.repository.dart';
import 'package:reminder/domain/user/failures/user.failures.dart';

class UserRepository implements IUserRepository {
  FirebaseFirestore _firestore = FirebaseFirestore.instance;
  String collection = "users";
  final IAuthFacde? _authFacde;
  UserRepository({IAuthFacde? authFacde}): _authFacde = authFacde;
  @override
  Future<Either<UserFailures, Unit>> save({required UserModel user}) async{
    try{
      await _firestore.collection(collection).doc(user.id).set(user.toJson());
      return right(unit);
    }catch (error){
      return left(UserFailures.serverError());
    }
  }
}
