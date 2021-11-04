import 'dart:async';
import 'package:base__pj_getx/util/app_log.dart';
import 'package:get/get_connect/http/src/request/request.dart';

FutureOr<Request> requestInterceptor(Request request) async {
  AppLog.info('---> ${request.method} ${request.url}');

  final token = ''; // lay token

  request.headers['X-Requested-With'] = 'XMLHttpRequest';
  request.headers['Authorization'] = 'Bearer $token';
  return request;
}
