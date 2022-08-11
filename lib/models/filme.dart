// ignore_for_file: public_member_api_docs, sort_constructors_first, non_constant_identifier_names

import 'dart:convert';

class Filme {
  final bool? adult;
  final String? backdrop_path;
  final List<int>? genre_ids;
  final String? id;
  final String? original_language;
  final String? original_title;
  final String? overview;
  final double? popularity;
  final String? poster_path;
  final String? release_date;
  final String? title;
  final bool? video;
  final double? vote_average;
  final int? vote_count;

  Filme({
    this.adult,
    this.backdrop_path,
    this.genre_ids,
    this.id,
    this.original_language,
    this.original_title,
    this.overview,
    this.popularity,
    this.poster_path,
    this.release_date,
    this.title,
    this.video,
    this.vote_average,
    this.vote_count,
  });

  // ----------------------------------------------
  // Conversores de Tipo para trabalhar com JSON
  // ----------------------------------------------
  //1 - toMap()    => Filme() => {id:122}
  //2 - fromMap()  => {id:122} => Filme()
  //3 - toJson()   => Filme() => {"id":"122"}
  //4 - fromJson() => {"id":"122"} => Filme()
  // ----------------------------------------------

  //1 - toMap()    => Filme() => {id:122}
  Map<String, dynamic> toMap() {
    return {
      'adult': adult,
      'backdrop_path': backdrop_path,
      'genre_ids': genre_ids,
      'id': id,
      'original_language': original_language,
      'original_title': original_title,
      'overview': overview,
      'popularity': popularity,
      'poster_path': poster_path,
      'release_date': release_date,
      'title': title,
      'video': video,
      'vote_average': vote_average,
      'vote_count': vote_count,
    };
  }

  //2 - fromMap()  => {id:122} => Filme()
  factory Filme.fromMap(Map<String, dynamic> map) {
    return Filme(
      adult: map['adult'],
      backdrop_path: map['backdrop_path'],
      genre_ids: map['genre_ids'].cast<int>(),
      id: map['id'],
      original_language: map['original_language'],
      original_title: map['original_title'],
      overview: map['overview'],
      popularity: map['popularity'],
      poster_path: map['poster_path'],
      release_date: map['release_date'],
      title: map['title'],
      video: map['video'],
      vote_average: double.parse(map['vote_average'].toString()),
      vote_count: map['vote_count'],
    );
  }

  //3 - toJson()   => Filme() => {"id":"122"}
  String toJson() {
    var MeuJson = json.encode(toMap());
    return MeuJson;
  }

  //4 - fromJson() => {"id":"122"} => Filme()
  factory Filme.fromJson(json) => Filme.fromMap(jsonDecode(json));

  @override
  String toString() {
    return 'Filme(adult: $adult, backdrop_path: $backdrop_path, genre_ids: $genre_ids, id: $id, original_language: $original_language, original_title: $original_title, overview: $overview, popularity: $popularity, poster_path: $poster_path, release_date: $release_date, title: $title, video: $video, vote_average: $vote_average, vote_count: $vote_count)';
  }
}
