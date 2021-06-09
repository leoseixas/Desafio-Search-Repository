import 'package:githun_search/app/model/user.dart';
import 'package:githun_search/app/repositories/user_repository.dart';
import 'package:mobx/mobx.dart';
part 'home_store.g.dart';

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  @observable
  String username = '';

  @action
  void setUserName(String value) => username = value;

  @computed
  bool get userNameValid => username != null && username.length >= 4;
  String get usernameError {
    if (!showErrors || userNameValid)
      return null;
    else if (username.isEmpty)
      return 'Campo obrigatório';
    else
      return 'E-mail inválido';
  }

  @observable
  User user;

  @action
  void setUser(User value) => user = value;

  @observable
  bool loading = false;

  @observable
  String error = '';

  @computed
  bool get isFormValid => userNameValid;

  @computed
  Function get searchPressed => isFormValid && !loading ? _searchUser : null;

  @observable
  bool showErrors = false;

  @observable
  bool success = false;

  @action
  void invalidSendPressed() => showErrors = true;

  @action
  Future<void> _searchUser() async {
    loading = true;
    try {
      final response = await UserRepository().getUserGitHub(username);
      setUser(response);
      success = true;
    } catch (e) {
      error = e;
    }
    loading = false;
  }
}
