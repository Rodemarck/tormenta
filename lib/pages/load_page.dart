import 'package:flutter/material.dart';

import 'mundo.dart';

class LoadPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Mundo.setContext(context);
    return Center(
      child: Text('carregando'),
    );
  }

}