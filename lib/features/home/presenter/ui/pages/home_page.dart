import 'package:flutter/material.dart';
import 'package:neuro_dashboard/core/utils/template/module_page_template.dart';
import 'package:neuro_dashboard/core/utils/widgets/neuro_text.dart';
import 'package:neuro_dashboard/features/home/presenter/controllers/home_controller.dart';
import 'package:page_manager/manager_page.dart';

class HomePage extends StatefulWidget {
  static const route = '/';
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ManagerPage<HomeController, HomePage> {
  @override
  Widget build(BuildContext context) {
    return ModuloPageTemplate(
      route: HomePage.route,
      state: ct.state,
      error: ct.error,
      child: const Center(
        child: NeuroText(text: 'Home Page'),
      ),
    );
  }
}
