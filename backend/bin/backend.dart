import 'package:shelf/shelf.dart';
import 'package:shelf/shelf_io.dart' as shelf_io;

import 'my_server.dart';

void main() async {
  var _server = MyServer();

  final server = await shelf_io.serve(_server.handler, 'localhost', 8080);
  print('Nosso seridor foi inciado http://localhost:8080');
}
