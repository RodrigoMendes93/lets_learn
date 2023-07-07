import 'package:flutter/material.dart';

class AtvPage9 extends StatelessWidget {
  const AtvPage9 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Align(
          child: Text(
            "PASSADO SIMPLES",
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
                      text: 'Usamos o ',
                      children: [
                        TextSpan(
                          text: 'simple past ',
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text:
                            'para falar de ações que já aconteceram. Adicionados -ed ao final dos verbos regulares na afirmativa.',
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
                          text: 'EXEMPLOS',
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
                          child: Text('To work'),
                        ),
                        title: Text('I worked yesterday'),
                        subtitle: Text('Eu trabalhei ontem'),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text('To want'),
                        ),
                        title: Text('She wanted an expensive car'),
                        subtitle: Text('Ela queria um carro caro'),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text('To play'),
                        ),
                        title: Text('They played soccer all weekend'),
                        subtitle: Text('Eles jogaram futebol o final de semana inteiro'),
                      ),
                    ],
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(15.0, 15.0, 15.0, 0),
                    child: Align(
                      alignment: Alignment.center,
                      child: Text.rich(
                        TextSpan(
                          text: 'PRÁTICA',
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
                        children: const [
                          Text('He '),
                          SizedBox(
                            width: 115,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'TO TRAVEL',
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(' to India last month'),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children: const [
                          Text('We '),
                          SizedBox(
                            width: 105,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'TO WANT',
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(' help with the project'),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children: const [
                          Text('The restaurant '),
                          SizedBox(
                            width: 98,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: 'TO OPEN',
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(' last week'),
                        ],
                      ),
                    ],
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
