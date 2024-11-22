abstract class AuthRepository {
  Future<void> singIn({required String email, required String senha});
  Future<String> getToken();
  Future<void> logout();
}
