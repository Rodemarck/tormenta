import 'package:flutter/material.dart';
import 'package:tormenta/controller/login_controller.dart';
import 'package:tormenta/pages/home_page.dart';

import '../mundo.dart';


class LoginPage extends StatefulWidget{
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => LoginPage_State();
}

class LoginPage_State extends State<LoginPage>{
  String login = '';
  String senha = '';
  @override
  Widget build(BuildContext context) {
    Mundo.setContext(context);
    return Scaffold(
      body: Center(
        child: Column(
          children: [
           Padding(padding: EdgeInsets.only(top: 15)),
            TextField(
              decoration: const InputDecoration(
                  labelText: 'Login'
              ),
              onChanged: (val){
                login = val.trim();
              },
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Senha',
              ),
              obscureText: true,
              enableSuggestions: false,
              autocorrect: false,
              onChanged: (val){
                senha = val.trim();
              },
            ),
            Padding(padding: EdgeInsets.only(top: 15)),
            TextButton(
                child: Text('Logar'),
                onPressed: (){
                  if(LoginController.logar(login, senha)){
                    Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePage())
                    );
                  }
                },
            )
          ],
        ),
      ),
    );
  }


}