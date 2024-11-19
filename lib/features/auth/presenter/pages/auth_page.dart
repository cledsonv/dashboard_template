import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/utils/template/default_page_template.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_button.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_textfield.dart';
import 'package:neuro_dashboard/features/auth/presenter/controllers/auth_controller.dart';
import 'package:neuro_dashboard/features/home/presenter/ui/pages/home_page.dart';
import 'package:page_manager/manager_page.dart';

class AuthPage extends StatefulWidget {
  static const route = '/auth';
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends ManagerPage<AuthController, AuthPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultPageTemplate(
      state: ct.state,
      error: ct.error,
      appBar: const Text('Login'),
      pageDone: () => Center(
        child: SizedBox(
          width: 500,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const NeuroText(
                text: 'Fazer Login',
                typography: NeuroTypography.title,
              ),
              const SizedBox(height: 20),
              const NeuroText(
                text: 'E-mail',
                typography: NeuroTypography.button,
              ),
              const SizedBox(height: 5),
              NeuroTextField(
                hintText: 'Digite seu e-mail',
                controller: ct.emailController,
                prefixIcon: const Icon(Icons.email_outlined),
              ),
              const SizedBox(height: 20),
              const NeuroText(
                text: 'Senha',
                typography: NeuroTypography.button,
              ),
              const SizedBox(height: 5),
              NeuroTextField(
                hintText: 'Digite sua senha',
                controller: ct.passwordController,
                prefixIcon: const Icon(Icons.lock_outline_sharp),
              ),
              const SizedBox(height: 10),
              NeuroButton(
                label: 'Entrar',
                width: MediaQuery.of(context).size.width,
                onPressed: () async {
                  await ct.singIn();
                  if (context.mounted) {
                    context.goNamed(
                      HomePage.route,
                    );
                  }
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
