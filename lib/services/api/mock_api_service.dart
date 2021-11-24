import 'package:agroo_test/services/api/api.dart';

class MockApiService implements IApi {
  @override
  Future get(Uri uri,
      {Map<String, dynamic>? queryParameters, Map<String, String>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future post(Uri uri,
      {required Map<String, dynamic> body, Map<String, String>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future put(Uri uri,
      {required Map<String, dynamic> body, Map<String, String>? headers}) {
    throw UnimplementedError();
  }

  @override
  Future delete(Uri uri) {
    throw UnimplementedError();
  }

  @override
  Future patch(Uri uri,
      {required Map<String, dynamic> body, Map<String, String>? headers}) {
    throw UnimplementedError();
  }
}
