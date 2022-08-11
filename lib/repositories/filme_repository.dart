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

  insert(Filme f) async {
    final filmeResponse = await http.post(
      Uri.parse("http://localhost:3031/filmes"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: f.toJson(),
    );
    print(filmeResponse.statusCode);
  }

  update(Filme f, String id) async {
    //93486260-1986-11ed-94e4-f5320c569855
    final filmeResponse = await http.put(
      Uri.parse("http://localhost:3031/filmes/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: f.toJson(),
    );
    print(filmeResponse.statusCode);
  }

  delete(String id) async {
    //93486260-1986-11ed-94e4-f5320c569855
    final filmeResponse = await http.delete(
      Uri.parse("http://localhost:3031/filmes/$id"),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
    );
    print(filmeResponse.statusCode);
  }
}
