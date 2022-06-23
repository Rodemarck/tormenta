import 'package:flutter/material.dart';
import 'package:tormenta/pages/homePage.dart';

class LoginPage extends StatelessWidget{
  const LoginPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                labelText: 'Login'
              ),
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
            ),
            TextButton(
                onPressed: (){

                  //context.
                  /*Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => HomePage())
                  );*/
                },
                child: Text('Logar'))
          ],
        ),
      ),
    );
  }


}