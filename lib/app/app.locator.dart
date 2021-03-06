// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// StackedLocatorGenerator
// **************************************************************************

// ignore_for_file: public_member_api_docs

import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';

import '../services/api/api.dart';
import '../services/api/api_service.dart';
import '../services/auth/auth.dart';
import '../services/auth/auth_service.dart';
import '../services/dashboard/dashboard.dart';
import '../services/dashboard/dashboard_service.dart';

final locator = StackedLocator.instance;

void setupLocator({String? environment, EnvironmentFilter? environmentFilter}) {
// Register environments
  locator.registerEnvironment(
      environment: environment, environmentFilter: environmentFilter);

// Register dependencies
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton<IAuth>(() => AuthService());
  locator.registerLazySingleton<IApi>(() => ApiService());
  locator.registerLazySingleton<IDashboard>(() => DashboardService());
}
