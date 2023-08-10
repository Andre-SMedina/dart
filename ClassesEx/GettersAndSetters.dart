class Usuario {
  String login;
  String senha;

  Usuario(this.login, this.senha);

  set setLogin(String login) {
    this.login = login;
  }

  String get getLogin {
    return this.login;
  }
}

void main() {
  final usuario = Usuario("Andre", "1234");

  print(usuario.login);
  usuario.setLogin = "Pedro";
  print(usuario.senha);
  usuario.senha = "3214";
  print(usuario.getLogin);
}
