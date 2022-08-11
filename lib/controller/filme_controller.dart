import 'package:desafio_consumo_api/models/filme.dart';
import 'package:desafio_consumo_api/repositories/filme_repository.dart';

class FilmeController {
  final _filmesRepository = FilmeRepository();

  void findAll() async {
    List<Filme> lista = await _filmesRepository.findAll();
    print('\nfindAll()\n');
    for (var item in lista) {
      print(item);
    }
  }

  void findbyId(String id) async {
    final filmes = await _filmesRepository.findbyId(id);
    print('\nfindById($id)\n');
    print(filmes);
  }

  void insertInto(Filme f) {
    _filmesRepository.insertInto(f);
  }
}
