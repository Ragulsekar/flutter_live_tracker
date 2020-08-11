import 'dart:convert';
import 'package:flutter_maps/model/UserModel.dart';
import 'package:flutter_maps/util/GlobalConstants.dart';
import 'package:http/http.dart' as http;

class ApiProvider {
  void printWrapped(String text) {
    final pattern = RegExp('.{1,800}'); // 800 is the size of each chunk
    pattern.allMatches(text).forEach((match) => print(match.group(0)));
  }

  Future<UserModel> userDetails(String accessKey, String id) async {
    var url = GlobalConstants.userDetails +
        "?access_key=" +
        accessKey +
        "&query=" +
        id;
    print(url);
    var response = await http.get(url);

    if (response.statusCode == 200) {
      print('statuscode::; $response.body');

      printWrapped(response.body);
      return UserModel.fromJson(json.decode(response.body));
    } else {
      print(response.body);

      print(Future.error(response.body));
      return Future.error('ERRR: $response.reasonPhrase');
    }
  }
}
