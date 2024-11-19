import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/core_module.dart';
import 'package:neuro_dashboard/core/routes/route_service.dart';
import 'package:neuro_dashboard/core/themes/theme_app.dart';

void main() {
  CoreModule().register();
  usePathUrlStrategy();
  GoRouter.optionURLReflectsImperativeAPIs = true;
  ServiceRoute.of.register();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: ServiceRoute.of.routers,
    );
  }
}
