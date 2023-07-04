import 'package:flutter/material.dart';

class SobrePage extends StatelessWidget {
  const SobrePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: const Align(
          alignment: Alignment.centerLeft,
          child: Text(
            'SOBRE NÓS',
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: Image.asset('images/logo.png'),
          ),
          const Padding(
            padding: EdgeInsets.symmetric(vertical: 25, horizontal: 40),
            child: Text.rich(
              TextSpan(
                text: 'A ',
                children: [
                  TextSpan(
                    text: 'Lets Learn ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'é uma gramática online para o estudante acessar de qualquer lugar em qualquer momento, eliminando as gramáticas velhas de papel e aliviando o peso da mochila através de um aplicativo modeno e intuitivo. O conhecimento do inglês a um clique de distância!\n',
                  ),
                  TextSpan(
                    text: '\n\nNosso Objetivo\n\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Contribuir para o acesso ao conhecimento de maneira fácil e rápida para que os estudantes possam tirar suas dúvidas sobre a gramática do inglês de maneira simples e moderna.\n',
                  ),
                  TextSpan(
                    text: '\n\nNossa Visão\n\n',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text:
                        'Acreditamos que o aprendizado pertence a todos e que aprendar uma nova língua abre portas para novos mundos, portanto não deveriam haver barreiras para aprender o inglês.\n',
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
