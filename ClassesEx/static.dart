class Pistola {
  //static permite acessar artributos e funções de classes sem a necessidade de instanciar a classe antes.
  static int municao = 30;

  static void duplicar() {
    municao *= 2;
    print(municao);
  }
}

void main(List<String> args) {
  print(Pistola.municao);
  Pistola.duplicar();
}
