import "package:flutter/material.dart";

class AtvPage2 extends StatelessWidget {
  const AtvPage2 ({super.key});

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
                          Text(" a rich person"),
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
                          Text(" a good doctor"),
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
                            width: 80,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" friends"),
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