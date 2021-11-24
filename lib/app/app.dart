import 'package:agroo_test/services/api/api.dart';
import 'package:agroo_test/services/api/api_service.dart';
import 'package:agroo_test/services/auth/auth.dart';
import 'package:agroo_test/services/auth/auth_service.dart';
import 'package:agroo_test/services/dashboard/dashboard.dart';
import 'package:agroo_test/services/dashboard/dashboard_service.dart';
import 'package:agroo_test/ui/view/auth/login/login_view.dart';
import 'package:agroo_test/ui/view/home/dashboard/dashboard_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

@StackedApp(
  routes: [
    AdaptiveRoute(page: DashboardView),
    AdaptiveRoute(page: LoginView, initial: true),
  ],
  dependencies: [
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthService, asType: IAuth),
    LazySingleton(classType: ApiService, asType: IApi),
    LazySingleton(classType: DashboardService, asType: IDashboard),
  ],
  logger: StackedLogger(),
)
class AppSetup {}
