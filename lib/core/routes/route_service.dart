import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/routes/register_module.dart';
import 'package:neuro_dashboard/features/auth/auth_module.dart';
import 'package:neuro_dashboard/features/home/home_module.dart';
import 'package:neuro_dashboard/features/splash/splash_module.dart';

class ServiceRoute {
  factory ServiceRoute() {
    return _singleton;
  }
  static final ServiceRoute _singleton = ServiceRoute._internal();

  ServiceRoute._internal();

  static ServiceRoute get of => ServiceRoute();
  bool isInicialize = false;
  static String? userId;
  static String? token;
  String? initalRoute;
  final List<RouteBase> _routes = [];
  final List<RegisterModule> modules = [
    SplashModule(),
    AuthModule(),
    HomeModule(),
  ];

  // Future<void> initialize() async {
  //   final respository = GetIt.I<CredencialRepository>();
  //   final credencial = await respository.get();
  //   userId = credencial?.userId;
  //   token = credencial?.token;
  //   isInicialize = true;
  // }

  void register() {
    for (final element in modules) {
      element.inicialize();
      _routes.addAll(element.routes());
    }
  }

  // String? _guard(BuildContext context, GoRouterState state) {
  //   log('============= route: ${state.uri.toString()}', name: 'Guard');
  //   if (!isInicialize) {
  //     if (state.uri.toString() != SplashPage.route) {
  //       initalRoute = state.uri.toString();
  //     }
  //     return SplashPage.route;
  //   }
  //   if (userId  == null) {
  //     return AuthPage.route;
  //   }
  //   if (initalRoute != null && state.uri.toString() != SplashPage.route) {
  //     final route = initalRoute;
  //     initalRoute = null;
  //     return route;
  //   }
  //   return null;
  // }

  GoRouter get routers => GoRouter(
        //  redirect: _guard,
        routes: _routes,
      );
}
