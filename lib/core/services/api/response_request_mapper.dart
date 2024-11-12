import 'package:dio/dio.dart' as dio;
import 'package:neuro_dashboard/core/services/api/response_request_entity.dart';

class ResponseRequestMapper {
  ResponseRequestEntity fromDio(dio.Response response) {
    return ResponseRequestEntity(
      data: response.data ?? {},
      statusCode: response.statusCode ?? 0,
      statusMessage: response.statusMessage ?? '',
    );
  }

  // ResponseRequestEntity fromHttp(http.Response response) {
  //   return ResponseRequestEntity(
  //     data: _convertToMap(response.bodyBytes),
  //     statusCode: response.statusCode,
  //     statusMessage: response.reasonPhrase ?? '',
  //   );
  // }
}
