class UserModel {
  Request request;

  UserModel({this.request});

  UserModel.fromJson(Map<String, dynamic> json) {
    request =
    json['request'] != null ? new Request.fromJson(json['request']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.request != null) {
      data['request'] = this.request.toJson();
    }
    return data;
  }
}

class Request {
  String type;
  String query;
  String language;
  String unit;

  Request({this.type, this.query, this.language, this.unit});

  Request.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    query = json['query'];
    language = json['language'];
    unit = json['unit'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['query'] = this.query;
    data['language'] = this.language;
    data['unit'] = this.unit;
    return data;
  }

}
