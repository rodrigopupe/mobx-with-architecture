// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStoreBase, Store {
  final _$nameAtom = Atom(name: '_AppStoreBase.name');

  @override
  String get name {
    _$nameAtom.context.enforceReadPolicy(_$nameAtom);
    _$nameAtom.reportObserved();
    return super.name;
  }

  @override
  set name(String value) {
    _$nameAtom.context.conditionallyRunInAction(() {
      super.name = value;
      _$nameAtom.reportChanged();
    }, _$nameAtom, name: '${_$nameAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_AppStoreBase.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$pictureAtom = Atom(name: '_AppStoreBase.picture');

  @override
  String get picture {
    _$pictureAtom.context.enforceReadPolicy(_$pictureAtom);
    _$pictureAtom.reportObserved();
    return super.picture;
  }

  @override
  set picture(String value) {
    _$pictureAtom.context.conditionallyRunInAction(() {
      super.picture = value;
      _$pictureAtom.reportChanged();
    }, _$pictureAtom, name: '${_$pictureAtom.name}_set');
  }

  final _$tokenAtom = Atom(name: '_AppStoreBase.token');

  @override
  String get token {
    _$tokenAtom.context.enforceReadPolicy(_$tokenAtom);
    _$tokenAtom.reportObserved();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.context.conditionallyRunInAction(() {
      super.token = value;
      _$tokenAtom.reportChanged();
    }, _$tokenAtom, name: '${_$tokenAtom.name}_set');
  }

  final _$_AppStoreBaseActionController =
      ActionController(name: '_AppStoreBase');

  @override
  void setUser(String name, String email, String picture, String token) {
    final _$actionInfo = _$_AppStoreBaseActionController.startAction();
    try {
      return super.setUser(name, email, picture, token);
    } finally {
      _$_AppStoreBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    final string =
        'name: ${name.toString()},email: ${email.toString()},picture: ${picture.toString()},token: ${token.toString()}';
    return '{$string}';
  }
}
