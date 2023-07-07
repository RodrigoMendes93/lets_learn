import 'dart:async';
import 'package:mysql1/mysql1.dart';

Future main() async {
  var settings = ConnectionSettings(
      host: 'localhost',
      port: 3306,
      user: 'root',
      password: '',
      db: 'lets_learn');

  //var conn = await MySqlConnection.connect(settings);
  //var select = await conn.query('SELECT * FROM usuario');
  //print(select);
}
