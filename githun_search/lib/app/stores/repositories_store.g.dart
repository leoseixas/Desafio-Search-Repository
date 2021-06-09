// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repositories_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$RepositoriesStore on _RepositoriesStore, Store {
  final _$nameAtom = Atom(name: '_RepositoriesStore.name');

  @override
  User get name {
    _$nameAtom.reportRead();
    return super.name;
  }

  @override
  set name(User value) {
    _$nameAtom.reportWrite(value, super.name, () {
      super.name = value;
    });
  }

  final _$errorAtom = Atom(name: '_RepositoriesStore.error');

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

  final _$_RepositoriesStoreActionController =
      ActionController(name: '_RepositoriesStore');

  @override
  void setName(User value) {
    final _$actionInfo = _$_RepositoriesStoreActionController.startAction(
        name: '_RepositoriesStore.setName');
    try {
      return super.setName(value);
    } finally {
      _$_RepositoriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setReposittories(List<Repositories> repositories) {
    final _$actionInfo = _$_RepositoriesStoreActionController.startAction(
        name: '_RepositoriesStore.setReposittories');
    try {
      return super.setReposittories(repositories);
    } finally {
      _$_RepositoriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setError(String value) {
    final _$actionInfo = _$_RepositoriesStoreActionController.startAction(
        name: '_RepositoriesStore.setError');
    try {
      return super.setError(value);
    } finally {
      _$_RepositoriesStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
name: ${name},
error: ${error}
    ''';
  }
}
