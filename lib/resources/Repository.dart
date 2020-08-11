import 'package:flutter_maps/model/UserModel.dart';

import 'ApiProvider.dart';

class Repository{
  final apiProvider = ApiProvider();

  Future<UserModel> userData(String accessKey, String id) =>
      apiProvider.userDetails(accessKey, id).then((value) {
        return value;
      }).catchError((error) {
        return throw error;
      });
}