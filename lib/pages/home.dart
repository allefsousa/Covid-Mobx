import 'package:covidmobx/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final TextStyle whiteText = TextStyle(color: Colors.white);

  @override
  Widget build(BuildContext context) {
    return Observer(builder: (_){
      return Scaffold(
        backgroundColor: Colors.white,
        body: (this.controller.mundo != null &&this.controller.pais != null)
        ? _buildBody()
        :Center(child: CircularProgressIndicator(),),
      );
    });
  }
}
