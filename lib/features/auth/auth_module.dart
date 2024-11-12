import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/routes/register_module.dart';
import 'package:neuro_dashboard/features/auth/presenter/pages/auth_page.dart';

class AuthModule implements RegisterModule {
  @override
  void inicialize() {}

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: AuthPage.route,
          builder: (context, state) => const AuthPage(),
        ),
      ];
}
