import 'package:neuro_dashboard/core/services/api/api_error/api_error.dart';

class ApiUnauthenticatedError extends ApiError {
  @override
  String message = 'Usuario não autenticado';
}
