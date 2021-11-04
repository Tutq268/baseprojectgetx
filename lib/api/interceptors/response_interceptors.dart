import 'dart:async';
import 'package:base__pj_getx/model/error_response.dart';
import 'package:base__pj_getx/util/app_log.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<dynamic> responseInterceptor(
    Request request, Response response) async {
  AppLog.info(
      '<--- ${response.statusCode} ${response.request?.method} ${response.request?.url}');
  try {
    AppLog.info(response.bodyString);
    return response;
  } catch (error) {
    if (response.statusCode != 200) {
      return handleErrorStatus(response);
    }
  }
}

dynamic handleErrorStatus(Response response) {
  AppLog.warning(response.body);
  switch (response.statusCode) {
    case 400:
      final ErrorResponse message = ErrorResponse.fromJson(response.body);
      return message;
    default:
  }
}
