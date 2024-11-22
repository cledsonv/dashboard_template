import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/global/global_variables.dart';
import 'package:neuro_dashboard/core/routes/register_module.dart';
import 'package:neuro_dashboard/features/splash/presenter/controller/splash_controller.dart';
import 'package:neuro_dashboard/features/splash/presenter/ui/pages/splash_page.dart';

class SplashModule implements RegisterModule {
  @override
  void inicialize() {
    //controller
    di.registerFactory<SplashController>(
      () => SplashController(),
    );
  }

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: SplashPage.route,
          builder: (context, state) => const SplashPage(),
        ),
      ];
}
