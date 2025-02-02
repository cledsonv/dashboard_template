import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/global/global_variables.dart';
import 'package:neuro_dashboard/core/routes/register_module.dart';
import 'package:neuro_dashboard/features/auth/domain/repositories/auth_repository.dart';
import 'package:neuro_dashboard/features/auth/domain/repositories/auth_repository_imp.dart';
import 'package:neuro_dashboard/features/auth/presenter/controllers/auth_controller.dart';
import 'package:neuro_dashboard/features/auth/presenter/pages/auth_page.dart';

class AuthModule implements RegisterModule {
  @override
  void inicialize() {
    //Repository
    di.registerFactory<AuthRepository>(
      () => AuthRepositoryImp(
        di(),
        di(),
      ),
    );

    //controller
    di.registerFactory<AuthController>(
      () => AuthController(
        di(),
      ),
    );
  }

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: AuthPage.route,
          builder: (context, state) => const AuthPage(),
        ),
      ];
}
