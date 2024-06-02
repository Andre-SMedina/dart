//Uma classe herda atributos de outra classe a qual foi extendida.

abstract class Pessoa {
  String nome = '';
  int idade = 0;

  //método construtor simplificado
  Pessoa(this.nome, this.idade);

  String apresentacao() {
    return 'Olá, meu nome é $nome e tenho $idade anos.';
  }
}

class Cadastro extends Pessoa {
  String nacionalidade = '';

  //Aqui é o construtor da classe Cadastro, que está pedindo nome e idade da classe Pessoa e a nacionalidade de sua própria classe. O super serve para indicar quais atributos devem ser informados da classe Pessoa.
  Cadastro(nome, idade, this.nacionalidade) : super(nome, idade);

  @override
  String apresentacao() {
    final msgPessoa = super.apresentacao() + ' Nacionalidade $nacionalidade';
    return msgPessoa;
  }
}

void main() {
  Cadastro pedro = Cadastro('Pedro', 37, 'Brasileiro');

  print(pedro.apresentacao());
}

//Perceba que a classe Cadastro foi atribuída a pedro, e pede nome e idade que não existem nessa classe, mas existe na classe Pessoa a qual foi herdada.