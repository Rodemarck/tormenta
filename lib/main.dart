import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:tormenta/model/personagem.dart';
import 'package:tormenta/pages/homePage.dart';
import 'package:tormenta/pages/sessao/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
    @override
    void f() async {
      Personagem p = await Personagem.cria();
      //print(p.nome);
    }
    Widget build(BuildContext context) {
      f();
      return MaterialApp(
        title: 'Tormenta genesis',
        theme: ThemeData.dark(),
        home:  LoginPage(),
      );
    }
}