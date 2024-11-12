import 'package:go_router/go_router.dart';
import 'package:neuro_dashboard/core/global/global_variables.dart';
import 'package:neuro_dashboard/core/routes/register_module.dart';
import 'package:neuro_dashboard/features/home/presenter/controllers/home_controller.dart';
import 'package:neuro_dashboard/features/home/presenter/ui/pages/home_page.dart';

class HomeModule implements RegisterModule {
  @override
  void inicialize() {
    //controller
    di.registerFactory<HomeController>(
      () => HomeController(),
    );
  }

  @override
  List<RouteBase> routes() => [
        GoRoute(
          path: HomePage.route,
          builder: (context, state) => const HomePage(),
        ),
      ];
}
