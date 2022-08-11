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

  void insert(Filme f) {
    _filmesRepository.insert(f);
  }

  void update(Filme f, String id) {
    _filmesRepository.update(f, id);
  }

  void delete(String id) {
    _filmesRepository.delete(id);
  }
}
