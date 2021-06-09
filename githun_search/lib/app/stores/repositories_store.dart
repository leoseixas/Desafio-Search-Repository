import 'package:githun_search/app/model/repositories.dart';
import 'package:githun_search/app/model/user.dart';
import 'package:githun_search/app/repositories/repositories_repository.dart';
import 'package:mobx/mobx.dart';
part 'repositories_store.g.dart';

class RepositoriesStore = _RepositoriesStore with _$RepositoriesStore;

abstract class _RepositoriesStore with Store {
  _RepositoriesStore(this.username) {
    autorun((_) {
      setName(username);
    });
  }

  final User username;

  @observable
  User name;

  @action
  void setName(User value) => name = value;

  ObservableList<Repositories> repositoriesList =
      ObservableList<Repositories>();

  @action
  void setReposittories(List<Repositories> repositories) {
    repositoriesList.clear();
    repositoriesList.addAll(repositories);
  }

  @observable
  String error;

  @action
  void setError(String value) => error = value;

  Future<void> loadRepositories() async {
    try {
      final repositores =
          await RepositoriesRepository().getRepositoriesUser(name.username);
      print(repositores);
      setReposittories(repositores);
    } catch (e) {
      print(e);
      setError(e.toString());
    }
  }
}
