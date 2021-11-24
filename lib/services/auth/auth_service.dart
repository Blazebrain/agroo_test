import 'dart:async';
import 'package:agroo_test/app/app.logger.dart';

import 'auth.dart';

class AuthService implements IAuth {
  final log = getLogger('AuthService');

  @override
  Future<void> loginUser(
      {required String email, required String password}) async {
    // this is to mock the behaviour of a real time api,
    //initiates a delay of 300 milliseconds
    await Future.delayed(const Duration(milliseconds: 300));
  }
}
