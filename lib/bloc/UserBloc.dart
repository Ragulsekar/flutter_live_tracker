import 'package:flutter_maps/model/UserModel.dart';
import 'package:flutter_maps/resources/Repository.dart';

class UserBloc {
  final _repository = Repository();
  var userDetails = PublishSubject<UserModel>();

  Observable<UserModel> get userDetailsResponse => userDetails.stream;

  userDetailsData(String accessKey, String id) async {
    _repository.userData(accessKey, id).then((value) {
      userDetails.sink.add(value);
    }).catchError((error) {
      userDetails.sink.addError(error);
    });
  }

  dispose() {
    userDetails.close();
  }
}

final userBloc = UserBloc();
