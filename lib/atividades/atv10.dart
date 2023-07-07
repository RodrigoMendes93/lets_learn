import "package:flutter/material.dart";

import "../datasource/sharedPreferences.dart";
import "../models/atividades.dart";

class AtvPage10 extends StatelessWidget {
  AtvPage10 ({super.key});

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
      var caso = Respostas(idAtividade: 10, resposta: res);
      var mm = await instancia.getAll();
      if(mm.isNotEmpty){
        bool test = [(mm.where((e) => e.idAtividade == 10))].isNotEmpty ? true : false;
        if (test){
          instancia.update(caso);
        }else{
          instancia.insert(caso);
        }
        for(int i = 0 ; i < mm.length ; i++){
          print(mm[i].toJson());
        }
      }else{
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
            "PASSADO SIMPLES (NEGATIVO)",
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
                      text: "No negativo do ",
                      children: [
                        TextSpan(
                          text: "simple past ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text:
                            "usamos o 'did not' ou 'didn't'.",
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
                          child: Text("To drink"),
                        ),
                        title: Text("I didn't drink anything at the party"),
                        subtitle: Text("Eu não bebi nada na festa"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To learn"),
                        ),
                        title: Text("She didn't learn how to speak Italian"),
                        subtitle: Text("Ela não aprendeu como falar italiano"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To understand"),
                        ),
                        title: Text("They didn't understand the tourist"),
                        subtitle: Text("Eles não entenderam o turista"),
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
                          const SizedBox(
                            width: 35,
                            child: Text("He "),
                          ),
                          SizedBox(
                            width: 115,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO LEARN",
                              ),
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" English at school"),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children:[                            
                          const SizedBox(
                            width: 35,
                            child: Text("We "),
                          ),
                          SizedBox(
                            width: 105,
                            child: TextField(
                              controller: _campoResposta[0],
                            
                              textAlign: TextAlign.center,
                              decoration: const InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO DRINK",
                              ),
                              style: const TextStyle(fontSize: 17),
                            ),
                            ),
                          const Text(" soda at the party last weekend"),
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
                          const SizedBox(
                            width: 35,
                            child: Text("You "),
                          ),
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
                          const Text(" the teacher"),
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
