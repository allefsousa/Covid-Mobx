import 'package:covidmobx/controller/home_controller.dart';
import 'package:covidmobx/pages/home.dart';
import 'package:covidmobx/pages/splash.dart';
import 'package:covidmobx/repository/covid_api_repository.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter/material.dart';

import 'app_widget.dart';

class AppModule extends MainModule {

  //classes que deseja Injetar no seu projeto (ex: bloc, dependency)
  @override
  List<Bind> get binds => [
    Bind((i) => CovidApiRepository()), //usando bloc
    Bind((i) => HomeController()), //usando bloc
  ];

  // rotas do módulo
  @override
  List<Router> get routers => [
    Router("/", child: (_, args) => SplashPage()),
    Router("/home", child: (_, args) => HomePage()),
  ];

  //adicione seu widget principal aqui
  @override
  Widget get bootstrap => AppWidget();

}