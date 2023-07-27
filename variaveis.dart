late String
    surName; /* o late permite inicializar uma variável antes da função
main para atribuir seu valor posteriormente. */

void main() {
  var nome; //recebe qualquer valor. Não precisa tipar
  dynamic
      altura; /* recebe qualquer tipo valor mesmo depois de já ter recebido 
  um tipo de valor */
  nome = "Andre";
  altura = 1.80;
  surName = "Medina";

  const List lista = [
    "gato",
    "pato"
  ]; /* o const não permite atribuir um novo 
  valor a variável e nem alterar seu conteúdo, como adicionar um novo elemento 
  a lista. */

  final List lista2 = [
    "gato",
    "rato"
  ]; /* o final também não permite atribuir
  um novo valor à variável, mas permite alterar seu conteúdo, como adicionar
  um novo elemento a lista. */

  String name = "André";
  String? enedereco =
      null; /* colocando o interrogação, permite que seja 
  atribuido o valor nulo a variável. */
  int idade = 65;
  double peso = 65.3;
  bool casado = false;
  late double valor =
      testeLate(); /* o late aqui impede de rodar essa linha do
  código, porque a variável valor não foi utilizado. Se ela for utilizada aí a 
  linha será lida. */

  print("""
  $nome
  $altura
  $idade
  $peso
  $casado
  $name
  $lista2
  $lista
  $enedereco
  """);
}

double testeLate() {
  print("testando late");

  return 5;
}
