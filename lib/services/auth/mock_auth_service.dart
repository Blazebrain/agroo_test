import 'auth.dart';

class MockAuthService implements IAuth {
  @override
  Future loginUser({required String email, required String password}) {
    // TODO: implement loginUser
    throw UnimplementedError();
  }
}
