import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reminder/domain/auth/contracts/i.auth.facade.dart';
import 'package:reminder/infrastructure/auth/firebase.auth_facade.dart';

final authFacadeProvider = Provider<IAuthFacde>((ref)=>FirebaseAuthFacade());