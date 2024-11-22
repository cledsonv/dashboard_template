import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/features/auth/presenter/pages/auth_page.dart';

class LogoutPage extends StatelessWidget {
  const LogoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(
          child: Text(
            'Realize o login para acessar o sistema',
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton.icon(
          style: TextButton.styleFrom(
            padding: const EdgeInsets.symmetric(
              horizontal: 24.0,
              vertical: 16.0,
            ),
          ),
          onPressed: () => context.push(AuthPage.route),
          icon: const Icon(Icons.add),
          label: const Text('Ir para o Login'),
        ),
      ],
    );
  }
}
