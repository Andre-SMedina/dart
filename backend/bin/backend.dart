import 'package:shelf/shelf.dart';

import 'infra/custom_server.dart';
import 'utils/custom_env.dart';
import 'apis/login_api.dart';
import 'apis/blog_api.dart';
import 'services/noticia_service.dart';

void main() async {
  var address = await CustomEnv.get(key: 'server_address');
  var port = await CustomEnv.get(key: 'server_port');

  var cascadeHandler = Cascade()
      .add(LoginApi().handler)
      .add(BlogApi(NoticiaService()).handler)
      .handler;
  //mostra o registro dos logs de cada acesso à API
  var middle =
      Pipeline().addMiddleware(logRequests()).addHandler(cascadeHandler);
  await CustomServer().initialize(
    handler: middle,
    address: address,
    port: int.parse(port),
  );
}
