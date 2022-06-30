import 'package:flutter/material.dart';
import 'package:tormenta/model/atributo.dart';
import 'package:tormenta/pages/mundo.dart';


class AtributoComponent extends StatefulWidget{
  final String atributo;
  final bool base;
  const AtributoComponent(this.atributo, [this.base = true]);

  @override
  State<AtributoComponent> createState() =>AtributoComponent_State();

}


class AtributoComponent_State extends State<AtributoComponent>{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    String nome = Atributo.nome[widget.atributo] as String;

    return  widget.base ? atributo_base(nome) : atributo_final(nome);
  }

  Widget atributo_base(String nome){
    Atributo attr = Mundo.personagem().atributos[widget.atributo] as Atributo;
    var mod = attr.getModificador(widget.base);
    var val = attr.valorBase;
    nome = '$nome:   $val ($mod)';
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(),
        IconButton(
            onPressed: (){
              int val = Mundo.personagem().atributos[widget.atributo]?.valorBase as int;
              if(val > 0) {
                --Mundo.personagem().atributos[widget.atributo]?.valorBase;
              }
              //widget.ss();
              setState((){});
            },
            icon: const Icon(Icons.remove)
        ),
        Text(nome),
        IconButton(
            onPressed: (){
              ++Mundo.personagem().atributos[widget.atributo]?.valorBase;
              //widget.ss();
              setState((){});
            },
            icon: const Icon(Icons.add)
        ),Container(),
      ],
    );
  }
  Widget atributo_final(String nome){
    Atributo attr = Mundo.personagem().atributos[widget.atributo] as Atributo;
    var mod = attr.getModificador(widget.base);
    var val = widget.base ? attr.valorBase : attr.valorFinal;
    nome = '$nome:   $val ($mod)';
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 15,bottom: 15),
          child: Text(nome),
        ),
      ],
    );
  }

}