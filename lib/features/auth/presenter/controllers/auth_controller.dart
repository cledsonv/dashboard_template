import 'package:flutter/widgets.dart';
import 'package:neuro_dashboard/features/auth/domain/repositories/auth_repository.dart';
import 'package:page_manager/export_manager.dart';

class AuthController extends ManagerStore {
  final AuthRepository _authRepository;
  AuthController(this._authRepository);

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void init(Map<String, dynamic> arguments) => handleTry(
        call: () async {},
      );

  Future<void> singIn() => handleTry(
        call: () async {
          await _authRepository.singIn(
            email: emailController.text,
            senha: passwordController.text,
          );
        },
      );
}
