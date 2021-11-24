import 'auth.dart';

class MockAuthService implements IAuth {
  @override
  Future loginUser({required String email, required String password}) {
    throw UnimplementedError();
  }
}
