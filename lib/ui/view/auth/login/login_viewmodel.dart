import 'package:agroo_test/app/app.locator.dart';
import 'package:agroo_test/app/app.router.dart';
import 'package:agroo_test/services/auth/auth.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends BaseViewModel {
  final _authService = locator<IAuth>();
  final _navigationService = locator<NavigationService>();

  Future<void> login(String email, String password) async {
    setBusy(true);
    await _authService.loginUser(email: email, password: password);
    setBusy(false);
    navigateToDashboard();
  }

  navigateToDashboard() {
    _navigationService.navigateTo(Routes.dashboardView);
  }
}
