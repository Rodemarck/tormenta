import 'package:flutter/material.dart';
import 'package:tormenta/model/atributo.dart';
import 'package:tormenta/pages/mundo.dart';


class AtributoComponent extends StatefulWidget{
  final Function ss;
  final String atributo;
  final bool base;
  AtributoComponent(this.atributo, this.ss,[this.base = false]);

  @override
  State<AtributoComponent> createState() =>AtributoComponent_State();

}


class AtributoComponent_State extends State<AtributoComponent>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Atributo attr = Mundo.personagem().atributos[widget.atributo] as Atributo;
    String nome = Atributo.nome[widget.atributo] as String;
    var mod = attr.getModificador(widget.base);
    var val = widget.base ? attr.valorBase : attr.valorFinal;
    nome = nome + ':   $val ($mod)';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        IconButton(
            onPressed: (){
              --Mundo.personagem().atributos[widget.atributo]?.valorBase;
              widget.ss();
            },
            icon: const Icon(Icons.remove)
        ),
        Text(nome),
        IconButton(
            onPressed: (){
              ++Mundo.personagem().atributos[widget.atributo]?.valorBase;
              widget.ss();
            },
            icon: const Icon(Icons.add)
        ),Container(),
      ],
    );
  }

}