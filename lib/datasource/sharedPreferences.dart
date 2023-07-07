import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter_application_1/models/atividades.dart';
import 'package:flutter_application_1/datasource/RespostasData.dart';

class RespostasSharedPreferencesDatasource implements RespostasDatasource {
  static const String _kquestoesKey = 'questoes';

  @override
  Future<void> insert(Respostas gabarito) async {
    // pega a instância do objeto SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    // pega as categorias que já foram salvas
    final questoes = prefs.getStringList(_kquestoesKey) ?? [];
    questoes.add(gabarito.toJson());
    
    // Salva a nova lista localmente
    await prefs.setStringList(_kquestoesKey, questoes);
  }
  Map<String, Object?> fromJson(String json) {
    // Converte de String para Map
    final mapRespostas = jsonDecode(json) as Map<String, Object?>;
    // Converte de Map para Respostas
    return mapRespostas;
  }

  Respostas fromMap(Map<String, Object?> map) {
    List<dynamic> lista = map['resposta'] as List<dynamic>;
    List<String> list = [];
    for(int i = 0 ; i<lista.length ; i++){
      list += [lista[i]];
    }
    return Respostas(
      idAtividade: map['idAtividade'] as int,
      resposta: list,
    );
  }

  @override
  Future<void> update(Respostas gabarito) async {
    // pega a instância do objeto SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    // pega as categorias que já foram salvas
    final questoesString = prefs.getStringList(_kquestoesKey) ?? [];
    /*
    Pela lógica feita no `insert` o ID da categoria é o mesmo que a posição na lista.
    Não confunda o função `map` com a classe `Map`.
    Em cada elemento que estiver em questoesString executo o método Respostas.fromJson informando ele como argumento.
    */
    final List<Respostas> questoes = questoesString.map((e) => fromMap(fromJson(e))).toList();
    for (int i = 0 ; i < questoes.length ; i++){
      if(questoes[i].id == gabarito.id){
        questoes[i] = gabarito;
      }
    }
    // Aqui poderia ser checado se o `id` de gabarito foi informado, caso não poderia estourar uma exceção.
    // atualiza a base com a nova lista
    await prefs.setStringList(
        _kquestoesKey, questoes.map((e) => e.toJson()).toList());
  }

  @override
  Future<void> delete(Respostas gabarito) async {
    // pega a instância do objeto SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    // pega as categorias que já foram salvas
    final questoesString = prefs.getStringList(_kquestoesKey) ?? [];
    // converte a lista de String para lista de Respostas
    final questoes = questoesString.map((e) => fromMap(fromJson(e))).toList();
    // remove buscando pelo ID
    questoes.removeWhere((element) => element.idAtividade == gabarito.idAtividade);
    // atualiza a base com a nova lista
    await prefs.setStringList(
        _kquestoesKey, questoes.map((e) => e.toJson()).toList());
  }

  @override
  Future<List<Respostas>> getAll() async {
    // pega a instância do objeto SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    // pega as categorias que já foram salvas
    final questoesString = prefs.getStringList(_kquestoesKey) ?? [];
    //Convere a lista de categorias de String para Respostas
    // Versão didática
    final List<Respostas> allquestoes = <Respostas>[];
    for (final gabaritoJson in questoesString) {
      allquestoes.add(fromMap(fromJson(gabaritoJson)));
    }
    return allquestoes;
    // Versão simplificada
    // return questoesString.map(Respostas.fromJson).toList();
  }

  @override
  Future<void> deleteById(int id) async {
    // ignore: todo
    //TODO: generalizar o `delete` e o `deleteById`, pois só há diferença na função de remoção

    // pega a instância do objeto SharedPreferences
    final prefs = await SharedPreferences.getInstance();
    // pega as categorias que já foram salvas
    final questoesString = prefs.getStringList(_kquestoesKey) ?? [];
    // converte a lista de String para lista de Respostas
    final questoes = questoesString.map((e) => fromMap(fromJson(e))).toList();
    // remove buscando pelo ID
    questoes.removeAt(id);
    // atualiza a base com a nova lista
    await prefs.setStringList(
        _kquestoesKey, questoes.map((e) => e.toJson()).toList());
  }
}