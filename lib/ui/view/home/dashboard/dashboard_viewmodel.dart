import 'package:agroo_test/app/app.locator.dart';
import 'package:agroo_test/models/user_model.dart';
import 'package:agroo_test/services/dashboard/dashboard.dart';
import 'package:stacked/stacked.dart';

class DashboardViewModel extends BaseViewModel {
  List<UserModel> peoplesList = [];
  final _dashboardService = locator<IDashboard>();

  Future<void> setUp() async {
    runBusyFuture(runInitialTasks());
  }

  Future<void> runInitialTasks() async {
    await getListOfPeople();
  }

  Future<void> getListOfPeople() async {
    peoplesList = await _dashboardService.getPeopleList();
  }
}
