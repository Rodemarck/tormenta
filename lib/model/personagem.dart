import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:tormenta/model/atributo.dart';
import 'package:tormenta/model/pericia.dart';


class Personagem{
  Map<String, Atributo> atributos = {};
  Map<String, dynamic> pericias  = {};
  String nome = 'nhaa21';
  int vidaMax = 10;
  int manaMax = 10;
  int manaAtual = 0;
  Future inicializa_pericia() async {
    final String response = await rootBundle.loadString('normal/pericias.json');
    final data = await json.decode(response);
    for(var per in data.keys){
      pericias[per] = Pericia(
          data[per]['nome'],
          data[per]['atributo'],
          (data[per]['treino'] == true),
          (data[per]['penalidade'] == true),
          data[per]['descricao'],
          data[per]['acoes']
      );
    }
    return 'this';
  }
  static Future<Personagem> cria() async {
    Personagem p = Personagem();
    p.atributos['for'] = Atributo(10);
    p.atributos['des'] = Atributo(10);
    p.atributos['con'] = Atributo(10);
    p.atributos['int'] = Atributo(10);
    p.atributos['sab'] = Atributo(10);
    p.atributos['car'] = Atributo(10);
    await p.inicializa_pericia();
    p.nome = 'rode';
    return p;
  }
  Personagem(){}

}