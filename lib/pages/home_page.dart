import 'package:flutter/material.dart';

import 'mundo.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    Mundo.setContext(context);
    return const Center(
      child: Text('Ola!!'),
    );
  }

}