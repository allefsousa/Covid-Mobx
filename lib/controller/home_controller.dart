import 'package:covidmobx/model/mundo.dart';
import 'package:covidmobx/model/pais.dart';
import 'package:covidmobx/repository/covid_api_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
part 'home_controller.g.dart';



class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  final api = Modular.get<CovidApiRepository>();

  _HomeControllerBase() {
    getInfoMundo();
    getInfoPais();
  }

  @observable
  int currentIndex = 0;

  @observable
  TextEditingController textFieldController = TextEditingController();

  @observable
  Mundo mundo;

  @observable
  Pais pais;

  @action
  Future getInfoMundo() async {
    mundo = await api.getMundo();
  }

  @action
  Future getInfoPais({String nomePais = 'brazil'}) async {
    try {
      pais = await api.getPais(pais: nomePais);
    }
    on Exception catch (e) {
      return Container();
    }
  }

  @action
   changePage(int index) {
    currentIndex = index;
  }
}
