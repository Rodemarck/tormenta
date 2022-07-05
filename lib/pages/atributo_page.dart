import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tormenta/components/atributo_component.dart';
import 'package:tormenta/model/raca.dart';

import 'mundo.dart';

class AtributoPage extends StatefulWidget {
  @override
  State<AtributoPage> createState() => _AtributoPage_State();
}

class _AtributoPage_State extends State<AtributoPage> {
  bool base_atr = true;
  @override
  Widget build(BuildContext context) {
    Mundo.setContext(context);
    List<Widget> lista = [];
    lista.add(Container(
      height: 50,
    ));
    lista.add(Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('Atributos base:'),
        Switch(
            value: base_atr,
            onChanged: (v) {
              setState(() {
                base_atr = v;
              });
            })
      ],
    ));

    Mundo.personagem().atributos.keys.forEach((element) {
      lista.add(Container(
        height: 25,
      ));
      lista.add(AtributoComponent(element, base_atr));
    });

    List<DropdownMenuItem<String>> itens = [];
    Raca.nomes.forEach((key, value) {
      itens.add(DropdownMenuItem<String>(
        child: Text(key),
        value: value,
      ));
    });
    lista.add(Container(
      height: 25,
    ));
    lista.add(Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text('classe:'),
        Container(
          width: 20,
        ),
        DropdownButton(
            items: itens,
            value: Mundo.personagem().raca,
            onChanged: (value) {
              Mundo.personagem().raca = value as String;
              setState(() {});
            })
      ],
    ));

    return Scaffold(
        body: Center(
      child: Column(
        children: lista,
      ),
    ));
  }
}
