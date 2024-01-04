
class LoginModel {
  String? username;
  String? password;
  LoginModel({required this.username, required this.password});

   factory LoginModel.fromJson(Map<String, dynamic> json) {
    return switch (json) {
      {
        'username': String username,
        'password': String password,
      } =>
        LoginModel(
          username: username,
          password: password,
        ),
        
      _ => throw const FormatException('Failed to load album.'),
    };
  }
}

