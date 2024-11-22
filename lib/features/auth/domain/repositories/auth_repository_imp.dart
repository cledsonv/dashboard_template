import 'package:neuro_dashboard/core/global/global_variables.dart';
import 'package:neuro_dashboard/core/services/api/api_neuro.dart';
import 'package:neuro_dashboard/core/services/preference/user_preference/key_preference.dart';
import 'package:neuro_dashboard/core/services/preference/user_preference/preference_service.dart';
import 'package:neuro_dashboard/features/auth/domain/repositories/auth_repository.dart';

class AuthRepositoryImp extends AuthRepository {
  final ApiNeuro _apiNeuro;
  final Preference _preference;

  AuthRepositoryImp(this._apiNeuro, this._preference);

  final path = '/auth';

  @override
  Future<void> singIn({required String email, required String senha}) async {
    final result = await _apiNeuro.post(path: '$path/login/dash', body: {
      'email': email,
      'senha': senha,
    });

    Global.token = result.data['token'];

    await _preference.put(
      keyPreferences: KeyPreferences.token,
      value: Global.token,
    );
  }

  @override
  Future<void> logout() async {
    Global.token = '';
    await _preference.put(
      keyPreferences: KeyPreferences.token,
      value: Global.token,
    );
  }

  @override
  Future<String> getToken() async {
    Global.token = await _preference.get(
      keyPreferences: KeyPreferences.token,
    );
    return Global.token;
  }
}
