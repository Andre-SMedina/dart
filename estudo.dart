abstract class Usuario {
  late String nome;
  late String email;
  late String funcao;

  Usuario(this.nome, this.email, this.funcao);
}

class Gerente extends Usuario {
  String formacao;
  String indicacao;

  Gerente(
      String nome, String email, String funcao, this.formacao, this.indicacao)
      : super(nome, email, funcao);
}

class Vendedor extends Usuario {
  String setor;
  String material;

  Vendedor(String nome, String email, String funcao, this.setor, this.material)
      : super(nome, email, funcao);
}

void main() {
  Gerente paulo = Gerente("Paulo", "paulo@gmai.", "gerente", "Adm", "Roberto");
  Vendedor jorge =
      Vendedor("Jorge", "jorge@gmail.com", "Vendedor", "masculino", "Jeans");

  print("Nome: ${paulo.nome}\nemail: ${paulo.email}\nFunção: ${paulo.funcao}"
      "\nFormação: ${paulo.formacao}\nIndicação: ${paulo.indicacao}");

  print("\nNome: ${jorge.nome}\nemail: ${jorge.email}\nFunção: ${jorge.funcao}"
      "\nFormação: ${jorge.setor}\nIndicação: ${jorge.material}");
}
