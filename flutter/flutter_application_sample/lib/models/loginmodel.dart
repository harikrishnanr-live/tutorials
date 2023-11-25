class LoginModel {
  // Create Dataypes variables
  String? username, password;

  // Create Constructor
  LoginModel({this.username, this.password});

  // create from json method
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(username: json["username"], password: json["password"]);
  }

  // tojson method
  Map<String, dynamic> tojson() {
    return {"username": username, "password": password};
  }
}
