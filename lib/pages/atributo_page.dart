import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tormenta/components/atributo_component.dart';

import 'mundo.dart';

class AtributoPage extends StatefulWidget{

  @override
  State<AtributoPage> createState() => _AtributoPage_State();
}

class _AtributoPage_State extends State<AtributoPage>{
  @override
  Widget build(BuildContext context) {
    Mundo.setContext(context);
    List<Widget> lista = [];
    lista.add(
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Atributos base:'),
          Switch(value: true, onChanged: (v){})
        ],
      )
    );
    Mundo.personagem().atributos.keys.forEach((element) {
      lista.add(Container(height: 25,));
      lista.add(AtributoComponent(element, (){setState((){});},true));
    });
    return  Scaffold(
        body: Center(
          child: Column(
            children: lista,
          ),
        )
    );
  }
}



