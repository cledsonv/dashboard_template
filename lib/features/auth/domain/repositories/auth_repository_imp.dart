import 'package:neuro_dashboard/core/services/api/api_neuro.dart';
import 'package:neuro_dashboard/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImp extends AuthRepository {
  final ApiNeuro _apiNeuro;

  AuthRepositoryImp(this._apiNeuro);

  @override
  Future<String> singIn({required String email, required String senha}) {
    // TODO: implement singIn
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }
}
