abstract class Pessoa {
  // classe abstrata não pode ser instanciada
  final String nome;

  Pessoa(this.nome);

  String pesquisar(String pesquisa) {
    return "Nome: $nome ... Pesquisa: $pesquisa ...";
  }
}

class Cliente extends Pessoa {
  final String email;
  Cliente(String nome, this.email) : super(nome);
}

class Paciente extends Pessoa {
  final String numeroCarteirinha;

  Paciente(nome, this.numeroCarteirinha) : super(nome);

  @override // sobreescreve a função herdada da classe Pessoa
  String pesquisar(String pesquisa) {
    final valor = super.pesquisar(pesquisa) + " Paciente";
    return valor;
  }
}

void main() {
  final cliente = Cliente("Andre", "andre@.com");
  final paciente = Paciente("Andre", "12134532");

  print(cliente.pesquisar("Banco"));
  print(paciente.pesquisar("Hospital"));
}
