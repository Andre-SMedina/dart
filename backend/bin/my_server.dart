import 'dart:convert';

import 'package:shelf/shelf.dart';
import 'package:shelf_router/shelf_router.dart';

class MyServer {
  Handler get handler {
    final router = Router();

    router.get('/', (Request req) {
      return Response(200, body: 'Primeira rota');
    });
    router.get('/ola/<user>', (Request req, String user) {
      return Response(200, body: 'Ola $user');
    });
    //receber via query params
    router.get('/info', (Request req) {
      String? name = req.url.queryParameters['name'];
      String? idade = req.url.queryParameters['idade'];

      return Response.ok('olá $name de $idade anos');
    });
    //resposta content type MIME
    router.get('/html', (Request req) {
      return Response(
        200,
        headers: {'content-type': 'text/html'},
        body: '<l1>Tipo HTML</l1>',
      );
    });
    router.post('/login', (Request req) async {
      var login = await req.readAsString();
      Map loginT = jsonDecode(login);

      if (loginT['nome'] == 'andre' && loginT['senha'] == '123') {
        // ignore: prefer_interpolation_to_compose_strings
        return Response.ok('Bem vindo André!');
      }

      return Response.forbidden('Acesso negado!');
    });

    return router.call;
  }
}
