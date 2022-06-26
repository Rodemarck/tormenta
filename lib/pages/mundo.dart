import 'package:flutter/material.dart';
import 'package:tormenta/model/personagem.dart';

class Mundo{
  static final Mundo i = Mundo._internal();
  factory Mundo(){
    return i;
  }
  Mundo._internal();
  static Mundo get(){
    return i;
  }
  static BuildContext context(){
    return i._context as BuildContext;
  }
  static void setContext(BuildContext context){
    i._context = context;
  }
  static void setPersonagem(Personagem p){
    i._personagem = p;
  }
  static Personagem personagem(){
    return i._personagem;
  }
  Personagem _personagem = Personagem();
  BuildContext? _context ;
}