import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tormenta/components/atributo_component.dart';

import 'mundo.dart';

class AtributoPage extends StatefulWidget{

  @override
  State<AtributoPage> createState() => _AtributoPage_State();
}

class _AtributoPage_State extends State<AtributoPage>{
  bool base_atr = true;
  @override
  Widget build(BuildContext context) {

    Map <String,int> a = {
      'oi':15
    };
    print(a['a'] == null);
    print(a['oi']);
    Mundo.setContext(context);
    List<Widget> lista = [];
    lista.add(Container(height: 50,));
    lista.add(
      Row(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text('Atributos base:'),
          Switch(value: base_atr, onChanged: (v){
            setState((){
              base_atr = v;
            });
          })
        ],
      )
    );

    Mundo.personagem().atributos.keys.forEach((element) {
      lista.add(Container(height: 25,));
      lista.add(AtributoComponent(element, base_atr));
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



