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

var MeuJson2 = {
  "adult": false,
  "backdrop_path": "/iQFcwSGbZXMkeyKrxbPnwnRo5fl.jpg",
  "genre_ids": [28, 12, 878],
  "id": "634649",
  "original_language": "en",
  "original_title": "Spider-Man: No Way Home",
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
  ChamafindAll(); // Consumindo do Banco de dados do dartion => Backend\public\db.json
  ChamafindById(); // Consumindo do Banco de dados do dartion => Backend\public\db.json

  // ===================================
  // TESTES COM 1 ITEM NA CLASSE FILME
  // ===================================
  // Test_toMap();
  // Test_fromMap();
  // Test_toJson();
  // Test_fromJson();
  // ===================================
}

Future<void> ChamafindAll() async {
  FilmeController().findAll();
  await Future.delayed(Duration(seconds: 1));
}

Future<void> ChamafindById() async {
  FilmeController().findbyId("760926");
  await Future.delayed(Duration(seconds: 1));
}

Future<void> Test_toMap() async {
  Future.delayed(Duration(seconds: 1), () async {
    // Popula Um Filme=> Chama metodo.toMap() de dentro do ( Objeto Filme )
    var _MeuMap = Filme(
      adult: MeuMap['adult'],
      backdrop_path: MeuMap['backdrop_path'],
      genre_ids: MeuMap['genre_ids'],
      id: MeuMap['id'],
      original_language: MeuMap['original_language'],
      original_title: MeuMap['original_title'],
      overview: MeuMap['overview'],
      popularity: MeuMap['popularity'],
      poster_path: MeuMap['poster_path'],
      release_date: MeuMap['release_date'],
      title: MeuMap['title'],
      video: MeuMap['video'],
      vote_average: MeuMap['vote_average'],
      vote_count: MeuMap['vote_count'],
    ).toMap();
    print('\nConversão de Filme() => Map()');
    print(_MeuMap);
  });
}

Future<void> Test_fromMap() async {
  Future.delayed(Duration(seconds: 1), () async {
    // Popular Um Filme=> Chama metodo.fromMap() de dentro do ( Objeto Filme )
    var _MeuMap = Filme(
      adult: MeuMap['adult'],
      backdrop_path: MeuMap['backdrop_path'],
      genre_ids: MeuMap['genre_ids'],
      id: MeuMap['id'],
      original_language: MeuMap['original_language'],
      original_title: MeuMap['original_title'],
      overview: MeuMap['overview'],
      popularity: MeuMap['popularity'],
      poster_path: MeuMap['poster_path'],
      release_date: MeuMap['release_date'],
      title: MeuMap['title'],
      video: MeuMap['video'],
      vote_average: MeuMap['vote_average'],
      vote_count: MeuMap['vote_count'],
    ).toMap();
    var MeuFilme = Filme.fromMap(_MeuMap);
    print('\nConversão de Map() => Filme()');
    print(MeuFilme);
  });
}

Future<void> Test_toJson() async {
  Future.delayed(Duration(seconds: 1), () async {
    // Popular Um Filme=> Chama metodo.toJson() de dentro do ( Objeto Filme )
    Filme MJ = Filme(
      adult: MeuMap['adult'],
      backdrop_path: MeuMap['backdrop_path'],
      genre_ids: MeuMap['genre_ids'],
      id: MeuMap['id'],
      original_language: MeuMap['original_language'],
      original_title: MeuMap['original_title'],
      overview: MeuMap['overview'],
      popularity: MeuMap['popularity'],
      poster_path: MeuMap['poster_path'],
      release_date: MeuMap['release_date'],
      title: MeuMap['title'],
      video: MeuMap['video'],
      vote_average: MeuMap['vote_average'],
      vote_count: MeuMap['vote_count'],
    );
    print('\nConversão de Filme() => Json()');
    print(MJ.toJson());
    //await Future.delayed(Duration(seconds: 2));
  });
}

Future<void> Test_fromJson() async {
  // Popula Um Filme=> Chama metodo.toMap() de dentro do ( Objeto Filme )
  Future.delayed(Duration(seconds: 1), () async {
    Filme MeuFilme = Filme(
      adult: MeuMap['adult'],
      backdrop_path: MeuMap['backdrop_path'],
      genre_ids: MeuMap['genre_ids'],
      id: MeuMap['id'],
      original_language: MeuMap['original_language'],
      original_title: MeuMap['original_title'],
      overview: MeuMap['overview'],
      popularity: MeuMap['popularity'],
      poster_path: MeuMap['poster_path'],
      release_date: MeuMap['release_date'],
      title: MeuMap['title'],
      video: MeuMap['video'],
      vote_average: MeuMap['vote_average'],
      vote_count: MeuMap['vote_count'],
    );
    print('\nConversão de fromJson() => Filme()');
    print(Filme.fromJson(MeuFilme.toJson()));
  });
}
