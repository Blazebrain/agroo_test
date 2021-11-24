import 'package:agroo_test/app/app.locator.dart';
import 'package:agroo_test/app/app.logger.dart';
import 'package:agroo_test/models/api_response.dart';
import 'package:agroo_test/services/api/api.dart';
import 'package:agroo_test/services/dashboard/dashboard.dart';
import 'package:agroo_test/utils/constants/api_constants.dart';

class DashboardService implements IDashboard {
  final log = getLogger('DashboardService');
  final _apiService = locator<IApi>();
  @override
  Future getPeopleList() async {
    final response = await _apiService.get(ApiConstants.getPeopleUri);
    final userModelList = ApiResponse.fromJson(response).results;
    log.i(userModelList);
    return userModelList;
  }
}
