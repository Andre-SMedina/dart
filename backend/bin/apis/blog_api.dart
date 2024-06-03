import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

import '../services/generic_service.dart';
import '../models/noticia_model.dart';

class BlogApi {
  final GenericService<NoticiaModel> _service;
  BlogApi(this._service);

  Handler get handler {
    Router router = Router();

    router.get('/blog/noticias', (Request req) {
      List<NoticiaModel> noticias = _service.findAll();
      return Response.ok(noticias);
    });
    router.post('/blog/noticias', (Request req) async {
      // ignore: unused_local_variable
      var body = await req.readAsString();
      return Response.ok('Post');
    });
    router.put('/blog/noticias', (Request req) {
      // _service.save("value");
      return Response.ok('Editar');
    });
    router.delete('/blog/noticias', (Request req) {
      // _service.delete(1);
      return Response.ok('Deletar');
    });

    return router;
  }
}
