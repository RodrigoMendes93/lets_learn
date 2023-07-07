import "package:flutter/material.dart";

class AtvPage3 extends StatelessWidget {
  const AtvPage3 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Align(
          child: Text(
            "PRESENTE SIMPLES",
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
                      text: "O",
                      children: [
                        TextSpan(
                          text: "simple present ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text:
                            "é usado para fatos gerais e eventos regulares. Para isso, usamos o verbo na sua base. Lembre-se que o verbo perde o 'to' quando não está mais no infinitivo. Ex.: To eat = comer, I eat = Eu como.",
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
                          child: Text("To work"),
                        ),
                        title: Text("I work as a techer"),
                        subtitle: Text("Eu trabalho como professor"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To go"),
                        ),
                        title: Text("You go to school every day"),
                        subtitle: Text("Você vai para escola todos os dias"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To study"),
                        ),
                        title: Text("We study English on Tuesdays and Thursdays"),
                        subtitle: Text("Nós estudamos inglês nas terças e quintas"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("To be"),
                        ),
                        title: Text("They are vegetarians"),
                        subtitle: Text("Eles são vegetarianos"),
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
                            width: 80,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO EAT",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" rice and beans for lunch"),
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
                                labelText: "TO PREFER",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" to drink sparkling water"),
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
                                labelText: "TO DRINK",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" orange juice for breakfast"),
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
                            width: 90,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO LIKE",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" to watch horror movies"),
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
