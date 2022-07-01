import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:tormenta/model/personagem.dart';
import 'package:tormenta/model/raca.dart';
import 'package:tormenta/pages/atributo_page.dart';
import 'package:tormenta/pages/home_page.dart';
import 'package:tormenta/pages/load_page.dart';
import 'package:tormenta/pages/mundo.dart';
import 'package:tormenta/pages/sessao/loginPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  void f() async {
    await Raca.carregar();
    print(Raca.racas.keys);
    Personagem p = await Personagem.cria();
    Mundo.setPersonagem(p);
    Navigator.push(Mundo.context(),
        MaterialPageRoute(builder: (context) => AtributoPage()));
  }

  Widget build(BuildContext context) {
    Mundo.setContext(context);
    f();
    return MaterialApp(
      title: 'Tormenta genesis',
      theme: ThemeData.dark(),
      home: Scaffold(body: LoadPage()),
    );
  }
}
