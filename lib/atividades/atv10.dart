import "package:flutter/material.dart";

class AtvPage10 extends StatelessWidget {
  const AtvPage10 ({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Align(
          alignment: Alignment.center,
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
                        children: const [
                          Text("He "),
                          SizedBox(
                            width: 115,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO LEARN",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" English at school"),
                        ],
                      ),
                    ],
                  ),
                  ListView(
                    shrinkWrap: true,
                    padding: const EdgeInsets.all(8),
                    children: <Widget>[
                      Row(
                        children:const [
                          Text("We "),
                          SizedBox(
                            width: 105,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO DRINK",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" soda at the party last weekend"),
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
                            width: 165,
                            child: TextField(
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                labelText: "TO UNDERSTAND",
                              ),
                              style: TextStyle(fontSize: 17),
                            ),
                            ),
                          Text(" the teacher"),
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
