import 'package:neuro_dashboard/core/core_module.dart';
import 'package:neuro_dashboard/core/services/preference/user_preference/key_preference.dart';
import 'package:neuro_dashboard/core/services/preference/user_preference/preference_service.dart';
import 'package:neuro_dashboard/features/auth/presenter/pages/auth_page.dart';
import 'package:page_manager/export_manager.dart';

class SplashController extends ManagerStore {
  final Preference _preference;

  SplashController(
    this._preference,
  );

  bool isLogged = false;

  Future<bool> readLoadingUser() async {
    return await _preference.get<bool>(keyPreferences: KeyPreferences.isLogged);
  }

  Future<void> loadDependences() async {
    CoreModule().start();
  }

  @override
  void init(Map<String, dynamic> arguments) async {
    await loadDependences();
    emitNavigation(AuthPage.route);
  }
}
