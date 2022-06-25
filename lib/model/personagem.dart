import 'dart:convert';
import 'dart:ffi';

import 'package:flutter/services.dart';
import 'package:tormenta/model/atributo.dart';
import 'package:tormenta/model/pericia.dart';


class Personagem{
  Map<String, dynamic> _atributos = {};
  Map<String, dynamic> _pericias  = {};
  String nome = 'nhaa';
  int ouro = 10;

  Future<Personagem> inicializa_pericia() async {
    final String response = await rootBundle.loadString('normal/pericias.json');
    final data = await json.decode(response);
    /*for(var per in data.keys){
      _pericias[per] = Pericia(
         data[per]['nome'],
         data[per]['atributo'],
         (data[per]['treino'] == true),
         (data[per]['penalidade'] == true),
         data[per]['descricao'],
         data[per]['acoes']
      );
    }*/
    return this;
  }
  static Future<Personagem> cria() async {
    Personagem p = Personagem();
    return await p.inicializa_pericia();
  }
  Personagem(){
    _atributos['for'] = Atributo(10);
    _atributos['des'] = Atributo(10);
    _atributos['con'] = Atributo(10);
    _atributos['int'] = Atributo(10);
    _atributos['sab'] = Atributo(10);
    _atributos['car'] = Atributo(10);
  }

}