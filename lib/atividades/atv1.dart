import "package:flutter/material.dart";

class AtvPage1 extends StatelessWidget {
  const AtvPage1 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Align(
          child: Text(
            "VERBO SER (PRESENTE)",
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
                          text: "verb to be ",
                          style: TextStyle(
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                        TextSpan(
                          text:
                            "pode ter muitos significados, mas aqui vamos focar em seu uso para 'ser', 'estar' e características'.",
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
                          child: Text("I am"),
                        ),
                        title: Text("I am twenty-two years old"),
                        subtitle: Text("Eu tenho vinte e dois anos de idade"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("You are"),
                        ),
                        title: Text("You a police officer"),
                        subtitle: Text("Você é um policial"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("He is"),
                        ),
                        title: Text("He is British"),
                        subtitle: Text("Ele é britânico"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("She is"),
                        ),
                        title: Text("She is an actress"),
                        subtitle: Text("Ela é uma atriz"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("It is"),
                        ),
                        title: Text("It (the weather) is terrible"),
                        subtitle: Text(
                            "Está (o clima) terrível    Obs.: 'It' é utilizado para coisas e animais"),
                      ),
                      ListTile(
                        leading: SizedBox(width: 75, child: Text("We are")),
                        title: Text("We are young"),
                        subtitle: Text("Nós somos jovens"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("You are"),
                        ),
                        title: Text("You are my best friends"),
                        subtitle: Text("Vocês são meus melhores amigos"),
                      ),
                      ListTile(
                        leading: SizedBox(
                          width: 75,
                          child: Text("They are"),
                        ),
                        title: Text("They are always late"),
                        subtitle: Text("Eles estão sempre atrasados"),
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
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" tired"),
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
                            width: 80,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" an old person"),
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
                          Text("He "),
                          SizedBox(
                            width: 80,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" Brazilian"),
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
                          Text("She "),
                          SizedBox(
                            width: 80,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" Rich"),
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
