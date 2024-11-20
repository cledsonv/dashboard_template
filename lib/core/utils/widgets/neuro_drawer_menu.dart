import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/utils/menu_item_enum.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart';
import 'package:neuro_dashboard/features/auth/presenter/pages/auth_page.dart';

class NeuroDrawerMenu extends StatelessWidget {
  final String atual;

  const NeuroDrawerMenu({
    super.key,
    required this.atual,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      elevation: 4,
      backgroundColor: Theme.of(context).colorScheme.surface.withOpacity(0.95),
      shadowColor: Theme.of(context).colorScheme.onPrimary,
      child: Column(
        children: [
          DrawerHeader(
            child: Image.asset(
              'assets/images/logo.png',
              color: Theme.of(context).colorScheme.primary,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: MenuItemEnum.values.length,
              itemBuilder: (context, index) {
                final e = MenuItemEnum.values[index];
                return ListTile(
                  title: NeuroText(text: e.title),
                  onTap: () {
                    if (e.route != atual) {
                      context.push(e.route);
                    }
                  },
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Padding(
              //   padding: const EdgeInsets.all(16.0),
              //   child: Column(
              //     children: [
              //       const VersaoAppOrg(),
              //       Text(
              //         Helps.isProd ? 'Produção' : 'Teste',
              //       ),
              //     ],
              //   ),
              // ),
              TextButton(
                child: const Text('Sair'),
                onPressed: () {
                  context.pushReplacement(AuthPage.route);
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}
