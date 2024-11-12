import 'package:neuro_dashboard/core/services/api/api_error/api_error.dart';

class ApiInternalServerError extends ApiError {
  @override
  String message;
  ApiInternalServerError({
    required this.message,
  });
}
