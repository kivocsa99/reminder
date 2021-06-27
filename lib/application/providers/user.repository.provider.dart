import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:reminder/application/providers/auth.facade.provider.dart';
import 'package:reminder/domain/user/contracts/i.user.repository.dart';
import 'package:reminder/infrastructure/user/services/user.repository.dart';

final userRepositoryProvider = Provider<IUserRepository>(
  (ref) => UserRepository(
    authFacde: ref.watch(authFacadeProvider),
  ),
);
