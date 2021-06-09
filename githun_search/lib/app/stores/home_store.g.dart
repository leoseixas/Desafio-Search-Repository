// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeStore on _HomeStore, Store {
  Computed<bool> _$userNameValidComputed;

  @override
  bool get userNameValid =>
      (_$userNameValidComputed ??= Computed<bool>(() => super.userNameValid,
              name: '_HomeStore.userNameValid'))
          .value;
  Computed<bool> _$isFormValidComputed;

  @override
  bool get isFormValid =>
      (_$isFormValidComputed ??= Computed<bool>(() => super.isFormValid,
              name: '_HomeStore.isFormValid'))
          .value;
  Computed<Function> _$searchPressedComputed;

  @override
  Function get searchPressed =>
      (_$searchPressedComputed ??= Computed<Function>(() => super.searchPressed,
              name: '_HomeStore.searchPressed'))
          .value;

  final _$usernameAtom = Atom(name: '_HomeStore.username');

  @override
  String get username {
    _$usernameAtom.reportRead();
    return super.username;
  }

  @override
  set username(String value) {
    _$usernameAtom.reportWrite(value, super.username, () {
      super.username = value;
    });
  }

  final _$userAtom = Atom(name: '_HomeStore.user');

  @override
  User get user {
    _$userAtom.reportRead();
    return super.user;
  }

  @override
  set user(User value) {
    _$userAtom.reportWrite(value, super.user, () {
      super.user = value;
    });
  }

  final _$loadingAtom = Atom(name: '_HomeStore.loading');

  @override
  bool get loading {
    _$loadingAtom.reportRead();
    return super.loading;
  }

  @override
  set loading(bool value) {
    _$loadingAtom.reportWrite(value, super.loading, () {
      super.loading = value;
    });
  }

  final _$errorAtom = Atom(name: '_HomeStore.error');

  @override
  String get error {
    _$errorAtom.reportRead();
    return super.error;
  }

  @override
  set error(String value) {
    _$errorAtom.reportWrite(value, super.error, () {
      super.error = value;
    });
  }

  final _$showErrorsAtom = Atom(name: '_HomeStore.showErrors');

  @override
  bool get showErrors {
    _$showErrorsAtom.reportRead();
    return super.showErrors;
  }

  @override
  set showErrors(bool value) {
    _$showErrorsAtom.reportWrite(value, super.showErrors, () {
      super.showErrors = value;
    });
  }

  final _$successAtom = Atom(name: '_HomeStore.success');

  @override
  bool get success {
    _$successAtom.reportRead();
    return super.success;
  }

  @override
  set success(bool value) {
    _$successAtom.reportWrite(value, super.success, () {
      super.success = value;
    });
  }

  final _$_searchUserAsyncAction = AsyncAction('_HomeStore._searchUser');

  @override
  Future<void> _searchUser() {
    return _$_searchUserAsyncAction.run(() => super._searchUser());
  }

  final _$_HomeStoreActionController = ActionController(name: '_HomeStore');

  @override
  void setUserName(String value) {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.setUserName');
    try {
      return super.setUserName(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setUser(User value) {
    final _$actionInfo =
        _$_HomeStoreActionController.startAction(name: '_HomeStore.setUser');
    try {
      return super.setUser(value);
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void invalidSendPressed() {
    final _$actionInfo = _$_HomeStoreActionController.startAction(
        name: '_HomeStore.invalidSendPressed');
    try {
      return super.invalidSendPressed();
    } finally {
      _$_HomeStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
username: ${username},
user: ${user},
loading: ${loading},
error: ${error},
showErrors: ${showErrors},
success: ${success},
userNameValid: ${userNameValid},
isFormValid: ${isFormValid},
searchPressed: ${searchPressed}
    ''';
  }
}
