//import 'package:desafio_consumo_api/models/filme.dart';
import 'dart:convert';

import 'package:desafio_consumo_api/models/filme.dart';
import 'package:http/http.dart' as http;

class FilmeRepository {
  Future<List<Filme>> findAll() async {
    final filmeResponse =
        await http.get(Uri.parse("http://localhost:3031/filmes"));

    final list = jsonDecode(filmeResponse.body);
    return list.map<Filme>((filme) {
      return Filme.fromMap(filme);
    }).toList();
  }

  Future<Filme> findbyId(String id) async {
    final filmeResponse =
        await http.get(Uri.parse("http://localhost:3031/filmes/$id"));

    final filmeMap = jsonDecode(filmeResponse.body);
    return Filme.fromMap(filmeMap);
  }

  insertInto(Filme f) async {
    // não funcionou = Erro 404
    final filmeResponse = await http.put(
      Uri.parse("http://localhost:3031/filmes"),
      body: f.toJson(),
      headers: {'Content-type': 'application/json'},
    );
    print(filmeResponse.statusCode);
  }
}
