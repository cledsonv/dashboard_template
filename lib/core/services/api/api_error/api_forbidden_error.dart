import 'package:neuro_dashboard/core/services/api/api_error/api_error.dart';

class ApiForbiddenError extends ApiError {
  @override
  String message = 'Acesso negado';
}
