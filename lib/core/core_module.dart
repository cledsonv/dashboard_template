import 'package:dio/dio.dart';
import 'package:neuro_dashboard/core/global/global_variables.dart';
import 'package:neuro_dashboard/core/library/api_client.dart';
import 'package:neuro_dashboard/core/routes/route_service.dart';
import 'package:neuro_dashboard/core/services/api/api_neuro.dart';
import 'package:neuro_dashboard/core/services/api/api_response.dart';
import 'package:neuro_dashboard/core/services/api/response_request_mapper.dart';
import 'package:neuro_dashboard/core/services/preference/sembast/sembast_database.dart';
import 'package:neuro_dashboard/core/services/preference/user_preference/preference_service.dart';
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
    //Preference
    di.registerFactory<Preference>(
      () => Preference(
        di(),
      ),
    );

    di.registerLazySingleton(() => ServiceRoute());
    di.registerFactory(() => ApiResponseParser());
    di.registerFactory<Dio>(() => Dio());
    di.registerFactory<ApiClient>(() => ApiClient(di()));
    di.registerFactory(() => ResponseRequestMapper());
    di.registerFactory(() => ApiNeuro(di(), di()));


  }

  Future<void> start() async {
    await di.get<PersistentDatabaseSembast>().starting();
    // await di.get<AuthService>().initialization();
    await di.get<ServiceRoute>().initialize();
  }
}
