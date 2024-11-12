 

import 'package:neuro_dashboard/core/services/api/api_error/api_error.dart';

class ApiNotFoundError extends ApiError {
  @override
  String message = 'Não encontrado';
}
