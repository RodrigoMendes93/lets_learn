import "package:flutter/material.dart";

import "../datasource/sharedPreferences.dart";
import "../models/atividades.dart";

class AtvPage7 extends StatelessWidget {
  AtvPage7 ({super.key});

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
      var caso = Respostas(idAtividade: 7, resposta: res);
      var mm = await instancia.getAll();
      if(mm.isNotEmpty){
        bool test = [(mm.where((e) => e.idAtividade == 7))].isNotEmpty ? true : false;
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
            "PRESENTE SIMPLES NEGATIVO (3° PESSOA)",
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
                      text: "Na terceira pessoa do singular (he/she/it) do ",
                      children: [
                        TextSpan(
                          text: "simple present ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text:
                            "usamos o 'does not' ou 'doesn't' para formar negativas.",
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
                          child: Text("To understand"),
                        ),
                        title: Text("He doesn't understand Greek"),
                        subtitle: Text("Ele não entende grego"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To work"),
                        ),
                        title: Text("She doesn't work on weekends"),
                        subtitle: Text("Ela não trabalha nos finais de semana"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To open"),
                        ),
                        title: Text("It doesn't open today"),
                        subtitle: Text("(O estabelecimento) não abre hoje    Obs.: Lembre que o 'it' é utilizado para coisas e animais!"),
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
                          const Text("He "),
                          SizedBox(
                            width: 105,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO WORK",
                              ),
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" at that store"),
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
                          const Text("She "),
                          SizedBox(
                            width: 165,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO UNDERSTAND",
                              ),
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" Spanish"),
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
                          const Text("It "),
                          SizedBox(
                            width: 98,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO OPEN",
                              ),
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" on Sundays"),
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
