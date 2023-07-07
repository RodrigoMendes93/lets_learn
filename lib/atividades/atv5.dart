import "package:flutter/material.dart";

import "../datasource/sharedPreferences.dart";
import "../models/atividades.dart";

class AtvPage5 extends StatelessWidget {
  AtvPage5 ({super.key});

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
      var caso = Respostas(idAtividade: 5, resposta: res);
      var mm = await instancia.getAll();
      if(mm.isNotEmpty){
        bool test = [(mm.where((e) => e.idAtividade == 5))].isNotEmpty ? true : false;
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
            "ARTIGOS",
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
                      text: "Os",
                      children: [
                        TextSpan(
                          text: "articles ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text:
                            "em inglês podem ser definidos (the = o, a) ou indefinidos (a/an = um, uma). Lembre-se que usamos 'a' antes de palavras com som de consoante e 'an' antes de palavras com som de vogal.",
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
                          child: Text("THE"),
                        ),
                        title: Text("I want to eat the apple pie"),
                        subtitle: Text("Eu quero comer a torta de maçã"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("A"),
                        ),
                        title: Text("She needs a new car"),
                        subtitle: Text("Ela precisa de um carro novo"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("AN"),
                        ),
                        title: Text("He drives an ambulance"),
                        subtitle: Text("Ele dirige uma ambulância"),
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
                        children: [                            
                          const Text("Monica lives in "),
                          SizedBox(
                            width: 80,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" old house"),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children: [                            
                          const Text("Steve is "),
                          SizedBox(
                            width: 115,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" best player in the team"),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children: [                            
                          const Text("I need to buy "),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" new phone"),
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
