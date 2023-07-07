import 'package:flutter_application_1/models/atividades.dart';

abstract class RespostasDatasource {
  Future<void> insert(Respostas gabarito);
  Future<void> update(Respostas gabarito);
  Future<void> delete(Respostas gabarito);
  Future<void> deleteById(int id);
  Future<List<Respostas>> getAll();
}