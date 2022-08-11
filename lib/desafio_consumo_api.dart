// ignore_for_file: non_constant_identifier_names

import 'dart:async';

import 'package:desafio_consumo_api/controller/filme_controller.dart';
import 'package:desafio_consumo_api/models/filme.dart';

Map<String, dynamic> MeuMap = {
  "adult": false,
  "backdrop_path": "/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
  "genre_ids": [28, 12, 878],
  "id": "123456",
  "original_language": "en",
  "original_title": "Teste inclusao",
  "overview":
      "Peter Parker is unmasked and no longer able to separate his normal life from the high-stakes of being a super-hero. When he asks for help from Doctor Strange the stakes become even more dangerous, forcing him to discover what it truly means to be Spider-Man.",
  "popularity": 6925.636,
  "poster_path": "/1g0dhYtq4irTY1GPXvft6k4YLjm.jpg",
  "release_date": "2021-12-15",
  "title": "Spider-Man: No Way Home",
  "video": false,
  "vote_average": 8.2,
  "vote_count": 11703
};

void main() {
  //
  // Executa_findAll();          // Consumindo do BD => Backend\public\db.json   OK
  // Executa_findById("760926"); // Consumindo do BD => Backend\public\db.json   OK
  //
  //Executa_Insert(MeuMap);      // insere no BD  OK
  //
  //Executa_Update(MeuMap2, "93486260-1986-11ed-94e4-f5320c569855"); // OK
  //
  //Executa_Delete("93486260-1986-11ed-94e4-f5320c569855"); // OK

  // ===================================
  // TESTES COM 1 ITEM NA CLASSE FILME
  // ===================================
  // Test_toMap(MeuMap);
  // Test_fromMap(MeuMap);
  // Test_toJson(MeuMap);
  // Test_fromJson(MeuMap);
  // ===================================
}

Future<void> Executa_findAll() async {
  FilmeController().findAll();
  await Future.delayed(Duration(seconds: 1));
}

Future<void> Executa_findById(String id) async {
  FilmeController().findbyId(id);
  await Future.delayed(Duration(seconds: 1));
}

// ===================================================
// Funcoes de manipulação de Dados vindos da API JSON
// ===================================================
Future<void> Executa_Insert(Map<String, dynamic> meuMap) async {
  Future.delayed(Duration(seconds: 1), () async {
    // Popular Um Filme=> Chama metodo.fromMap() de dentro do ( Objeto Filme )
    var _MeuMap = Filme(
      adult: meuMap['adult'],
      backdrop_path: meuMap['backdrop_path'],
      genre_ids: meuMap['genre_ids'],
      id: meuMap['id'],
      original_language: meuMap['original_language'],
      original_title: meuMap['original_title'],
      overview: meuMap['overview'],
      popularity: meuMap['popularity'],
      poster_path: meuMap['poster_path'],
      release_date: meuMap['release_date'],
      title: meuMap['title'],
      video: meuMap['video'],
      vote_average: meuMap['vote_average'],
      vote_count: meuMap['vote_count'],
    ).toMap();
    var MeuFilme = Filme.fromMap(_MeuMap);
    print('\nInserto no Banco');
    print(MeuFilme);
    FilmeController().insert(MeuFilme);
  });
}

Future<void> Executa_Update(Map<String, dynamic> meuMap, String id) async {
  Future.delayed(Duration(seconds: 1), () async {
    // Popular Um Filme=> Chama metodo.fromMap() de dentro do ( Objeto Filme )
    var _MeuMap = Filme(
      adult: meuMap['adult'],
      backdrop_path: meuMap['backdrop_path'],
      genre_ids: meuMap['genre_ids'],
      id: meuMap['id'],
      original_language: meuMap['original_language'],
      original_title: meuMap['original_title'],
      overview: meuMap['overview'],
      popularity: meuMap['popularity'],
      poster_path: meuMap['poster_path'],
      release_date: meuMap['release_date'],
      title: meuMap['title'],
      video: meuMap['video'],
      vote_average: meuMap['vote_average'],
      vote_count: meuMap['vote_count'],
    ).toMap();
    var MeuFilme = Filme.fromMap(_MeuMap);
    print('\nUpdate no Banco no id = $id');
    print(MeuFilme);
    FilmeController().update(MeuFilme, id);
  });
}

Future<void> Executa_Delete(String id) async {
  print('\nDelete no Banco no id = $id');
  FilmeController().delete(id);
}

// ===================================
// Funcoes de testes em Dados unicos
// ===================================
Future<void> Test_toMap(Map<String, dynamic> meuMap) async {
  Future.delayed(Duration(seconds: 1), () async {
    // Popula Um Filme=> Chama metodo.toMap() de dentro do ( Objeto Filme )
    var _MeuMap = Filme(
      adult: meuMap['adult'],
      backdrop_path: meuMap['backdrop_path'],
      genre_ids: meuMap['genre_ids'],
      id: meuMap['id'],
      original_language: meuMap['original_language'],
      original_title: meuMap['original_title'],
      overview: meuMap['overview'],
      popularity: meuMap['popularity'],
      poster_path: meuMap['poster_path'],
      release_date: meuMap['release_date'],
      title: meuMap['title'],
      video: meuMap['video'],
      vote_average: meuMap['vote_average'],
      vote_count: meuMap['vote_count'],
    ).toMap();
    print('\nConversão de Filme() => Map()');
    print(_MeuMap);
  });
}

Future<void> Test_fromMap(Map<String, dynamic> meuMap) async {
  Future.delayed(Duration(seconds: 1), () async {
    // Popular Um Filme=> Chama metodo.fromMap() de dentro do ( Objeto Filme )
    var _MeuMap = Filme(
      adult: meuMap['adult'],
      backdrop_path: meuMap['backdrop_path'],
      genre_ids: meuMap['genre_ids'],
      id: meuMap['id'],
      original_language: meuMap['original_language'],
      original_title: meuMap['original_title'],
      overview: meuMap['overview'],
      popularity: meuMap['popularity'],
      poster_path: meuMap['poster_path'],
      release_date: meuMap['release_date'],
      title: meuMap['title'],
      video: meuMap['video'],
      vote_average: meuMap['vote_average'],
      vote_count: meuMap['vote_count'],
    ).toMap();
    var MeuFilme = Filme.fromMap(_MeuMap);
    print('\nConversão de Map() => Filme()');
    print(MeuFilme);
  });
}

Future<void> Test_toJson(Map<String, dynamic> meuMap) async {
  Future.delayed(Duration(seconds: 1), () async {
    // Popular Um Filme=> Chama metodo.toJson() de dentro do ( Objeto Filme )
    Filme MeuFilme = Filme(
      adult: meuMap['adult'],
      backdrop_path: meuMap['backdrop_path'],
      genre_ids: meuMap['genre_ids'],
      id: meuMap['id'],
      original_language: meuMap['original_language'],
      original_title: meuMap['original_title'],
      overview: meuMap['overview'],
      popularity: meuMap['popularity'],
      poster_path: meuMap['poster_path'],
      release_date: meuMap['release_date'],
      title: meuMap['title'],
      video: meuMap['video'],
      vote_average: meuMap['vote_average'],
      vote_count: meuMap['vote_count'],
    );
    print('\nConversão de Filme() => Json()');
    print(MeuFilme.toJson());
  });
}

Future<void> Test_fromJson(Map<String, dynamic> meuMap) async {
  // Popula Um Filme=> Chama metodo.toMap() de dentro do ( Objeto Filme )
  Future.delayed(Duration(seconds: 1), () async {
    Filme MeuFilme = Filme(
      adult: meuMap['adult'],
      backdrop_path: meuMap['backdrop_path'],
      genre_ids: meuMap['genre_ids'],
      id: meuMap['id'],
      original_language: meuMap['original_language'],
      original_title: meuMap['original_title'],
      overview: meuMap['overview'],
      popularity: meuMap['popularity'],
      poster_path: meuMap['poster_path'],
      release_date: meuMap['release_date'],
      title: meuMap['title'],
      video: meuMap['video'],
      vote_average: meuMap['vote_average'],
      vote_count: meuMap['vote_count'],
    );
    print('\nConversão de fromJson() => Filme()');
    print(Filme.fromJson(MeuFilme.toJson()));
  });
}
