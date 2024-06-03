import 'generic_service.dart';
import '../models/noticia_model.dart';

class NoticiaService implements GenericService<NoticiaModel> {
  final List<NoticiaModel> _fakeDB = [];

  @override
  bool delete(int id) {
    _fakeDB.removeWhere((e) => e.id == id);
    return true;
  }

  @override
  List<NoticiaModel> findAll() {
    return _fakeDB;
  }

  @override
  NoticiaModel findOne(int id) {
    return _fakeDB.firstWhere((e) => e.id == id);
  }

  @override
  bool save(NoticiaModel value) {
    // ignore: unused_local_variable
    var find = _fakeDB.firstWhere((e) => e.id == value.id);

    return true;
  }
}
