import 'package:flutter/material.dart';
import 'package:flutter_application_1/lista.dart';
import 'package:flutter_application_1/routes/routes_generator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
      initialRoute: RoutesGenerator.homePage,
      onGenerateRoute: RoutesGenerator.generate,
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override

  // ignore: library_private_types_in_public_api
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // ignore: prefer_final_fields
  TextEditingController _campoEmailControlador = TextEditingController();
  // ignore: prefer_final_fields
  TextEditingController _campoSenhaControlador = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("LOGIN"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.only(top: 60.0),
              child: Center(
                child: SizedBox(
                    width: 200,
                    height: 200,
                    child: Image.asset('assets/images/logomenu.png')),
              ),
            ),
            Padding(
              //padding: const EdgeInsets.only(left:15.0,right: 15.0,top:0,bottom: 0),
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                controller: _campoEmailControlador,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Email',
                    hintText: 'Exemplo: valido@usuario.com.br'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 15.0, top: 15, bottom: 0),
              //padding: EdgeInsets.symmetric(horizontal: 15),
              child: TextField(
                obscureText: true,
                controller: _campoSenhaControlador,
                decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Senha',
                    hintText: 'Escreva a sua senha de segurança'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              child: TextButton(
                onPressed: () {
                  //função
                },
                child: Container(
                  height: 50,
                  width: 250,
                  decoration: BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.circular(20)),
                  child: TextButton(
                    onPressed: () {
                      String campoEmailValor = _campoEmailControlador.text;
                      String campoSenhaValor = _campoSenhaControlador.text;

                      if (campoEmailValor == 'valido@usuario.com.br' &&
                          campoSenhaValor == '123456@') {
                        Navigator.of(context).pushNamed('/lista');
                      } else {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (_) => (const LoginPage())));
                      }
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
              child: TextButton(
                onPressed: () {
                  //Esqueci a senha quando pressionado!
                },
                child: const Text(
                  'Esqueci a senha',
                  style: TextStyle(color: Colors.blue, fontSize: 15),
                ),
              ),
            ),
            const SizedBox(
              height: 130,
            ),
            const Text('Novo por aqui? Crie uma conta clicando aqui')
          ],
        ),
      ),
    );
  }
}
