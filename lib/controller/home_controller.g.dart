// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$HomeController on _HomeControllerBase, Store {
  final _$currentIndexAtom = Atom(name: '_HomeControllerBase.currentIndex');

  @override
  int get currentIndex {
    _$currentIndexAtom.reportRead();
    return super.currentIndex;
  }

  @override
  set currentIndex(int value) {
    _$currentIndexAtom.reportWrite(value, super.currentIndex, () {
      super.currentIndex = value;
    });
  }

  final _$textFieldControllerAtom =
      Atom(name: '_HomeControllerBase.textFieldController');

  @override
  TextEditingController get textFieldController {
    _$textFieldControllerAtom.reportRead();
    return super.textFieldController;
  }

  @override
  set textFieldController(TextEditingController value) {
    _$textFieldControllerAtom.reportWrite(value, super.textFieldController, () {
      super.textFieldController = value;
    });
  }

  final _$mundoAtom = Atom(name: '_HomeControllerBase.mundo');

  @override
  Mundo get mundo {
    _$mundoAtom.reportRead();
    return super.mundo;
  }

  @override
  set mundo(Mundo value) {
    _$mundoAtom.reportWrite(value, super.mundo, () {
      super.mundo = value;
    });
  }

  final _$paisAtom = Atom(name: '_HomeControllerBase.pais');

  @override
  Pais get pais {
    _$paisAtom.reportRead();
    return super.pais;
  }

  @override
  set pais(Pais value) {
    _$paisAtom.reportWrite(value, super.pais, () {
      super.pais = value;
    });
  }

  final _$getInfoMundoAsyncAction =
      AsyncAction('_HomeControllerBase.getInfoMundo');

  @override
  Future getInfoMundo() {
    return _$getInfoMundoAsyncAction.run(() => super.getInfoMundo());
  }

  final _$getInfoPaisAsyncAction =
      AsyncAction('_HomeControllerBase.getInfoPais');

  @override
  Future getInfoPais({String nomePais = 'brazil'}) {
    return _$getInfoPaisAsyncAction
        .run(() => super.getInfoPais(nomePais: nomePais));
  }

  final _$_HomeControllerBaseActionController =
      ActionController(name: '_HomeControllerBase');

  @override
  dynamic changePage(int index) {
    final _$actionInfo = _$_HomeControllerBaseActionController.startAction(
        name: '_HomeControllerBase.changePage');
    try {
      return super.changePage(index);
    } finally {
      _$_HomeControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
currentIndex: ${currentIndex},
textFieldController: ${textFieldController},
mundo: ${mundo},
pais: ${pais}
    ''';
  }
}
