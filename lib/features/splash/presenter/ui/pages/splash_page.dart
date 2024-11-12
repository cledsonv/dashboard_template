import 'package:flutter/material.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart';
import 'package:neuro_dashboard/features/splash/presenter/controller/splash_controller.dart';
import 'package:page_manager/export_manager.dart';

class SplashPage extends StatefulWidget {
  static const route = '/splash';
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends ManagerPage<SplashController, SplashPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 27, 122, 247),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              const SizedBox(height: 200),
              Image.asset(
                'assets/images/logo_splash.png',
              ),
              const Spacer(),
              const NeuroText(
                text:
                    '© 2023 KUAB - Leitura Infantil Inclusiva.\nTodos os direitos reservados.',
                textAlign: TextAlign.center,
                color: Colors.white,
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }
}
