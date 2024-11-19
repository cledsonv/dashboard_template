import 'package:neuro_dashboard/core/global/global_variables.dart';
import 'package:neuro_dashboard/core/routes/route_service.dart';
import 'package:neuro_dashboard/core/services/api/api_response.dart';
import 'package:neuro_dashboard/core/services/preference/sembast/sembast_database.dart';
import 'package:neuro_dashboard/core/utils/template/handle_dialog_error.dart';
import 'package:page_manager/handles/manager_handle_dialog_error.dart';

class CoreModule {
  void register() {
    di.registerFactory<ManagerHandleDialogError>(
      () => HandleDialogError(),
    );

    //register singletons
    di.registerLazySingleton<PersistentDatabaseSembast>(
      () => PersistentDatabaseSembast(),
    );
    di.registerFactory(() => ApiResponseParser());
    di.registerLazySingleton(() => ServiceRoute());
  }

  Future<void> start() async {
    await di.get<PersistentDatabaseSembast>().starting();
    // await di.get<AuthService>().initialization();
   // await di.get<ServiceRoute>().initialize();
  }
}
