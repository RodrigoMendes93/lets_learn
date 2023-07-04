import 'package:flutter/material.dart';
import 'package:flutter_application_1/sobre.dart';

class Pagina1 extends StatefulWidget {
  const Pagina1({super.key, required String title}): _title = title;

  final String _title;
  get name => _title;

  @override
  State<Pagina1> createState() => _Pagina1State();
}

class _Pagina1State extends State<Pagina1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(foregroundColor: Colors.white,),
            onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (_) => (const SobrePage())));
            }, 
            child: const Text('Sobre'),
            ),
        ],
      ),
      body: ListView.builder(
          itemCount: 10,
          physics: const AlwaysScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return ListTile(
              leading: SizedBox.fromSize(
                        size: const Size.fromRadius(20),
                        child: Image.asset(
                        '/images/logo.png',
                        alignment: Alignment.centerLeft,
                        width: 100,
                        ),
                      ),
              title: Text('Atividade ${index + 1}'),
              subtitle: Text('Atividade para estudantes do nível ${index + 1}'),
              dense: false,
            );
          },
        ),
    );
  }
}