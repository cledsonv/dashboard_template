import 'package:neuro_dashboard/core/services/api/api_error/api_error.dart';
import 'package:page_manager/export_manager.dart';

class HandleWhenGetRethrow implements ManagerHandleWhenGetRethrow {
  @override
  bool call(Object? e) {
    if (e is ApiError) {
      return true;
    }
    return false;
  }
}
