import 'package:agroo_test/models/user_model.dart';

class ApiResponse {
  int? count;
  String? next;
  String? previous;
  List<UserModel>? results;

  ApiResponse({this.count, this.next, this.previous, this.results});

  ApiResponse.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    next = json['next'] ?? null;
    previous = json['previous'] ?? null;
    if (json['results'] != null) {
      results = [];
      json['results'].forEach((v) {
        results!.add(UserModel.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    data['count'] = count;
    data['next'] = next;
    data['previous'] = previous;
    if (results != null) {
      data['results'] = results!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
