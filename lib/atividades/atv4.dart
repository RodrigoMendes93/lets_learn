import "package:flutter/material.dart";

class AtvPage4 extends StatelessWidget {
  const AtvPage4 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Align(
          alignment: Alignment.center,
          child: Text(
            "PRESENTE SIMPLES (NEGATIVO)",
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
                          text: "simple present ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text:
                            "no negativo usavos o 'do not' ou 'don't'.",
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
                        title: Text("I don't drink tea"),
                        subtitle: Text("Eu não bebo chá"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To watch"),
                        ),
                        title: Text("You don't watch Netflix"),
                        subtitle: Text("Você não assiste Netflix"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To eat"),
                        ),
                        title: Text("We don't eat spaghetti for dinner"),
                        subtitle: Text("Nós não comemos espaguete no jantar"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To travel"),
                        ),
                        title: Text("They don't travel very often"),
                        subtitle: Text("Eles não viajam com muita frequência"),
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
                        children: const [
                          Text("I "),
                          SizedBox(
                            width: 115,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO WATCH",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" horror movies."),
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
                          Text("You "),
                          SizedBox(
                            width: 115,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO TRAVEL",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" abroad very often"),
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
                          Text("We "),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO LIKE",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" oto wake up early"),
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
                          Text("They "),
                          SizedBox(
                            width: 110,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO STUDY",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" German"),
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
