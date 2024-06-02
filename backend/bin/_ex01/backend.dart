import 'package:shelf/shelf_io.dart' as shelf_io;

import 'my_server.dart';

void main() async {
  var server = MyServer();

  await shelf_io.serve(server.handler, 'localhost', 8080);
  print('Nosso seridor foi inciado http://localhost:8080');
}
