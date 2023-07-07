import 'package:flutter/material.dart';
import 'package:flutter_application_1/sobre.dart';

class ListaAtividades extends StatefulWidget {
  const ListaAtividades({super.key, required String title}) : _title = title;

  final String _title;
  get name => _title;

  @override
  State<ListaAtividades> createState() => _ListaAtividadesState();
}

class _ListaAtividadesState extends State<ListaAtividades> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget._title),
        actions: <Widget>[
          TextButton(
            style: TextButton.styleFrom(
              foregroundColor: Colors.white,
            ),
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => (const SobrePage())));
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
                'assets/images/logo.png',
                alignment: Alignment.centerLeft,
                width: 100,
              ),
            ),
            title: TextButton(
                onPressed: () {
                  Navigator.of(context)
                      .pushNamed('/atividades/atv${index + 1}');
                },
                style: TextButton.styleFrom(
                foregroundColor: Colors.black,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text('Atividade ${index + 1}'),
                  ),
                ),
            subtitle:
                Text('  Clique no título para ver a Atividade ${index + 1}'),
            dense: false,
          );
        },
      ),
    );
  }
}
