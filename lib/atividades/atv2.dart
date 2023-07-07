import "package:flutter/material.dart";

import "../datasource/sharedPreferences.dart";
import "../models/atividades.dart";

class AtvPage2 extends StatelessWidget {
  AtvPage2 ({super.key});

  final List<TextEditingController> _campoResposta = [
      for (int i = 1; i < 4; i++)
      TextEditingController()
    ];


  Future<void> confirmar() async{
      List<String> res = [];
      for (int i = 0; i<_campoResposta.length; i++){
        res.add(_campoResposta[i].text);
      }

      var instancia = RespostasSharedPreferencesDatasource();
      var caso = Respostas(idAtividade: 2, resposta: res);
      var mm = await instancia.getAll();
      if(mm.isNotEmpty){
        bool test = [(mm.where((e) => e.idAtividade == 2))].isNotEmpty ? true : false;
        if (test){
          print('b');
          instancia.update(caso);
        }else{
          print('a');
          instancia.insert(caso);
        }
        for(int i = 0 ; i < mm.length ; i++){
          print(mm[i].toJson());
        }
      }else{
        print('c');
        instancia.insert(caso);
      }
  } 
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Align(
          child: Text(
            "VERBO SER (NEGATIVO)",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 40),
              child: Column(
                children: [
                  const Text.rich(
                    TextSpan(
                      text: "Para o ",
                      children: [
                        TextSpan(
                          text: "verb to be ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text:
                            "no negativo usamos 'not'. É muito comum usar a forma abreviada no dia a dia como a seguir:",
                        ),
                      ],
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text.rich(
                        TextSpan(
                          text: "EXEMPLOS",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: const <Widget>[
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("I am not"),
                        ),
                        title: Text("I'm not twenty-two years old"),
                        subtitle: Text("Eu não tenho vinte e dois anos de idade"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("You are not"),
                        ),
                        title: Text("You aren't a police officer"),
                        subtitle: Text("Você não é um policial"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("He is not"),
                        ),
                        title: Text("He isn't British"),
                        subtitle: Text("Ele não é britânico"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("She is not"),
                        ),
                        title: Text("She isn't an actress"),
                        subtitle: Text("Ela não é uma atriz"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("It is not"),
                        ),
                        title: Text("It (the weather) isn't terrible"),
                        subtitle: Text(
                            "Não está (o clima) terrível    Obs.: 'It' é utilizado para coisas e animais"),
                      ),
                      ListTile(
                        leading: SizedBox(width: 75, child: Text("We are not")),
                        title: Text("We aren't young"),
                        subtitle: Text("Nós não somos jovens"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("You are not"),
                        ),
                        title: Text("You aren't my best friends"),
                        subtitle: Text("Vocês não são meus melhores amigos"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("They are not"),
                        ),
                        title: Text("They aren't always late"),
                        subtitle: Text("Eles não estão sempre atrasados"),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text.rich(
                        TextSpan(
                          text: "PRÁTICA",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children:  [
                          const Text("I "),
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" a rich person"),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children:  [
                          const Text("She "),
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: _campoResposta[1],
                            
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" a good doctor"),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children:  [
                          const Text("They "),
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: _campoResposta[2],
                            
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" friends"),
                        ],
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                    child: Align(
                      alignment: Alignment.center,
                      child: TextButton(
                        onPressed: (){
                          confirmar();
                          Navigator.of(context).pushNamed('/lista');
                        }, 
                        child: const Text('Confirmar'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}