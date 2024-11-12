import 'package:flutter/material.dart'; 
import 'package:neuro_dashboard/features/home/presenter/controllers/home_controller.dart';
import 'package:page_manager/manager_page.dart';

class HomePage extends StatefulWidget {
  static const route = '/home';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ManagerPage<HomeController, HomePage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1024) { 
          return Scaffold(
            body: Row(
              children: [
                // Barra lateral fixa para navegação no desktop
                Sidebar(),
                Expanded(
                  child: ContentArea(),
                ),
              ],
            ),
          );
        } else if (constraints.maxWidth > 600) {
          // Layout Tablet
          return Scaffold(
            appBar: AppBar(
              title: const Text("Dashboard"),
            ),
            drawer: Sidebar(), // Drawer para tablets, acessível pela AppBar
            body: ContentArea(),
          );
        } else {
          // Layout Mobile
          return Scaffold(
            appBar: AppBar(
              title: const Text("Dashboard"),
              leading: Builder(
                builder: (context) => IconButton(
                  icon: const Icon(Icons.menu),
                  onPressed: () => Scaffold.of(context).openDrawer(),
                ),
              ),
            ),
            drawer:
                Sidebar(), // Drawer para mobile, acessível pelo ícone de menu
            body: ContentArea(),
          );
        }
      },
    );
  }
}

// Barra lateral que será usada como navegação no desktop e no Drawer para mobile/tablet
class Sidebar extends StatelessWidget {
  const Sidebar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
              ),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              Navigator.pop(context); // Fecha o Drawer ao selecionar
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Configurações'),
            onTap: () {
              Navigator.pop(context); // Fecha o Drawer ao selecionar
            },
          ),
          // Adicione mais itens conforme necessário
        ],
      ),
    );
  }
}

// Conteúdo principal da página que será exibido em cada layout
class ContentArea extends StatelessWidget {
  const ContentArea({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Bem-vindo ao Dashboard!',
        style: TextStyle(fontSize: 24),
      ),
    );
  }
}
