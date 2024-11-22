import 'package:neuro_dashboard/core/core_module.dart';
import 'package:neuro_dashboard/features/auth/presenter/pages/auth_page.dart';
import 'package:page_manager/export_manager.dart';

class SplashController extends ManagerStore<String> {
  SplashController();

  bool isLogged = false;

  @override
  void init(Map<String, dynamic> arguments) async {
    await loadDependences();
  }

  Future<void> loadDependences() => handleTry(
        call: () async {
          await CoreModule().start();
          print('SplashController.loadDependences');
          emitNavigation(AuthPage.route);
          print('aaa');
        },
      );
}
