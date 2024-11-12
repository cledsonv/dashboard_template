import 'package:neuro_dashboard/core/services/api/api_error/api_error.dart';

class ApiUnprocessableEntityError extends ApiError {
  @override
  String message;
  ApiUnprocessableEntityError({
    required this.message,
  });
}
