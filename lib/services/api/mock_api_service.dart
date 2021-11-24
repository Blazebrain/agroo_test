import 'package:agroo_test/services/api/api.dart';

class MockApiService implements IApi {
  @override
  Future get(Uri uri,
      {Map<String, dynamic>? queryParameters, Map<String, String>? headers}) {
    // TODO: implement get
    throw UnimplementedError();
  }

  @override
  Future post(Uri uri,
      {required Map<String, dynamic> body, Map<String, String>? headers}) {
    // TODO: implement post
    throw UnimplementedError();
  }

  @override
  Future put(Uri uri,
      {required Map<String, dynamic> body, Map<String, String>? headers}) {
    // TODO: implement put
    throw UnimplementedError();
  }

  @override
  Future delete(Uri uri) {
    // TODO: implement delete
    throw UnimplementedError();
  }

  @override
  Future patch(Uri uri,
      {required Map<String, dynamic> body, Map<String, String>? headers}) {
    // TODO: implement patch
    throw UnimplementedError();
  }
}
