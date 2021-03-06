import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tormenta/util/json_helper.dart';

class Raca {
  String nome = '';
  List<String> menos = [];
  Map<String, int> atributos = {};
  List<String> habilidades = [];

  static Map<String, Raca> racas = {};
  static Map<String, String> nomes = {};
  static Future carregar() async {
    final String response = await rootBundle.loadString('normal/racas.json');
    final data = await json.decode(response);
    racas = {};
    nomes = {};
    for (var raca in data.keys) {
      var raca_ = data[raca];
      String nome_ = raca_['nome'];
      nomes[nome_] = raca;
      List<String> habilidades_ =
          JsonHelper.getStringList(raca_['habilidades']);
      List<String> menos_ = [];
      Map<String, int> atributos_ = {};
      for (var atributo_ in raca_['atributos'].keys) {
        if (atributo_ == 'livre') {
          menos_ =
              JsonHelper.getStringList(raca_['atributos']['livre']['menos']);
          atributos_['livre'] = raca_['atributos']['livre']['valor'] as int;
          continue;
        }
        atributos_[atributo_] = raca_['atributos'][atributo_] as int;
      }
      racas[raca] = Raca(nome_, habilidades_, atributos_, menos_);
    }
    return 'this';
  }

  static List<String> getNomes() {
    List<String> lista = [];
    nomes.keys.forEach((element) {
      lista.add(element);
    });
    return lista;
  }

  static String getNome(String nome) {
    return nomes[nome] as String;
  }

  Raca(this.nome, this.habilidades, this.atributos, [this.menos = const []]);
}
