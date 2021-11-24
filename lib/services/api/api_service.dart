import 'dart:io';
import 'package:agroo_test/app/app.logger.dart';
import 'package:agroo_test/utils/constants/api_constants.dart';
import 'package:dio/dio.dart';

import 'api.dart';

class ApiService implements IApi {
  final log = getLogger('ApiService');
  final dio = Dio();

  ApiService() {
    dio.options.baseUrl = ApiConstants.baseUri.toString();
    dio.options.sendTimeout = ApiConstants.sendTimeout;
    dio.options.receiveTimeout = ApiConstants.receiveTimeout;

    log.i('Api service constructed and DIO setup register');
  }

  @override
  Future<dynamic> get(
    Uri uri, {
    Map<String, dynamic>? queryParameters,
    Map<String, String>? headers,
  }) async {
    log.i('Making request to $uri');
    try {
      final response = await dio.get(uri.toString(),
          queryParameters: queryParameters, options: Options(headers: headers));
      log.i('Response from $uri \n${response.data}');
      return response.data;
    } on DioError catch (error) {
      log.e(error.response!.data);
      throw HttpException(error.response!.statusCode.toString());
    } catch (error) {
      log.e(error.toString());
      throw HttpException(error.toString());
    }
  }

  @override
  Future<dynamic> post(Uri uri,
      {required Map<String, dynamic> body,
      Map<String, String>? headers}) async {
    log.i('Making request to $uri');
    try {
      final response = await dio.post(uri.toString(),
          data: body, options: Options(headers: headers));

      log.i('Response from $uri \n${response.data}');
      return response.data;
    } on DioError catch (error) {
      log.e(error.response!.data);
      throw HttpException(error.response!.statusCode.toString());
    } catch (error) {
      log.e(error.toString());
      throw HttpException(error.toString());
    }
  }

  @override
  Future<dynamic> put(
    Uri uri, {
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    log.i('Making request to $uri');
    try {
      final response = await dio.put(uri.toString(),
          data: body, options: Options(headers: headers));

      log.i('Response from $uri \n${response.data}');
      return response.data;
    } on DioError catch (error) {
      log.e(error.response!.data);
      throw HttpException(error.response!.statusCode.toString());
    } catch (error) {
      log.e(error.toString());
      throw HttpException(error.toString());
    }
  }

  @override
  Future<dynamic> delete(Uri uri) async {
    log.i('Making request to $uri');
    try {
      final response = await dio.delete(uri.toString());
      log.i('Response from $uri \n${response.data}');
      return response.data;
    } on DioError catch (error) {
      log.e(error.response!.data);
      throw HttpException(error.response!.statusCode.toString());
    } catch (error) {
      log.e(error.toString());
      throw HttpException(error.toString());
    }
  }

  @override
  Future<dynamic> patch(
    Uri uri, {
    required Map<String, dynamic> body,
    Map<String, String>? headers,
  }) async {
    log.i('Making request to $uri');
    try {
      final response = await dio.patch(
        uri.toString(),
        data: body,
        options: Options(headers: headers),
      );
      log.i('Response from $uri \n${response.data}');
      return response.data;
    } on DioError catch (error) {
      log.e(error.response!.data);
      throw HttpException(error.response!.statusCode.toString());
    } catch (error) {
      log.e(error.toString());
      throw HttpException(error.toString());
    }
  }
}
