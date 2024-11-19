import 'package:flutter/widgets.dart';
import 'package:page_manager/export_manager.dart';

class AuthController extends ManagerStore {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  void init(Map<String, dynamic> arguments) => handleTry(
        call: () async { 
          
        },
      );

  Future<void> singIn() => handleTry(
        call: () async {},
      );
}
