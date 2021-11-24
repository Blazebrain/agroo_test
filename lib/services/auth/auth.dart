abstract class IAuth {
  /// [Future]<[dynamic]>, login user with email and password.
  ///
  /// API Method: Post
  ///
  /// parameters; String [email], String [password].
  Future<dynamic> loginUser({required String email, required String password});
}
