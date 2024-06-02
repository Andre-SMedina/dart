void main() {
  Pessoa paulo = Pessoa('Paulo', 137);

  paulo.apresentacao();
}

class Pessoa {
  String nome = '';
  int idade = 0;

  // Esse é o método construtor, que tornará obrigatório o preenchimento de nome e idade ao instanciar a classe a uma variável.
  // Pessoa(String nome, int idade) {
  //   this.nome = nome;
  //   idade < 120 ? this.idade = idade : this.idade = 0;
  // }

  // construtor simplificado
  Pessoa(this.nome, this.idade);

  void apresentacao() {
    print('Eu sou $nome e tenho $idade');
  }
}
