import 'package:go_router/go_router.dart';

abstract interface class RegisterModule {
  List<RouteBase> routes();
  void inicialize();
}
