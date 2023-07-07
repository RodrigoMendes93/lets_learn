import 'dart:convert';

class Respostas{
  final int idAtividade;
  final List<String>? resposta; 

  Respostas({
    required this.idAtividade,
    this.resposta,
  });

    String toJson() {
    // Converte o objeto Category para Map<String, Object?>
    final Map<String, Object?> map = toMap();
    // Pega o Map e converte para uma String
    return jsonEncode(map);
  }
  Map<String, Object?> toMap() => {
        'idAtividade': idAtividade,
        'resposta': resposta ?? '',
      };

  int get id {
    return idAtividade;
  }
}