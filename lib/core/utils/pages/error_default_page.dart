import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ErrorDefaultPage extends StatelessWidget {
  const ErrorDefaultPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Erro'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Ocorreu um erro na página',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ElevatedButton.icon(
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(
                  horizontal: 24.0,
                  vertical: 12.0,
                ),
              ),
              onPressed: () => context.push('/home'),
              icon: const Icon(Icons.home),
              label: const Text('Ir para a Home'),
            ),
          ],
        ),
      ),
    );
  }
}