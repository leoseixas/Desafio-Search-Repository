import 'package:dio/dio.dart';
import 'package:githun_search/app/model/user.dart';

class UserRepository {
  Future<User> getUserGitHub(String username) async {
    final url = 'https://api.github.com/users/$username';

    final response = await Dio().get<Map>(url);

    return User(
      name: response.data['name'],
      username: response.data['login'],
      bio: response.data['bio'],
      image: response.data['avatar_url'],
    );
  }
}
