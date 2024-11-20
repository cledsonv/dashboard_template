abstract class AuthRepository {
  Future<String> singIn({required String email, required String senha});
  Future<void> logout();
}
