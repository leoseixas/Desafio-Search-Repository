import 'package:dio/dio.dart';
import 'package:githun_search/app/model/repositories.dart';

class RepositoriesRepository {
  Future<List<Repositories>> getRepositoriesUser(String username) async {
    final String url = 'https://api.github.com/users/$username/repos';

    try {
      final response = await Dio().get(url);
      final list = response.data as List;
      return list.map((e) => Repositories.fromJson(e)).toList();
    } catch (e) {
      return Future.error('Falha ao obter lista de Repositorios');
    }
  }
}
