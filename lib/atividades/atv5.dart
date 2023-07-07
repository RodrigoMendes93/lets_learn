import "package:flutter/material.dart";

class AtvPage5 extends StatelessWidget {
  const AtvPage5 ({super.key});

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
                        children: const [
                          Text("Monica lives in "),
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
                          Text(" old house"),
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
                          Text("Steve is "),
                          SizedBox(
                            width: 115,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" best player in the team"),
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
                          Text("I need to buy "),
                          SizedBox(
                            width: 100,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" new phone"),
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
