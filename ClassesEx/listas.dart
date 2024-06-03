void main(List<String> args) {
  bool insert = true;
  List<int> lista1 = [1, 2, 3];
  List<int> lista2 = [4, 5, 6];
  List<int>? lista3 = null;

  //interrogação serve para verificar se a lista3 é nula, se for nula ele não adiciona, se não for ele adiciona. O 7 só será adicionado se o insert for verdadeiro.
  List<int> listaTotal = [0, ...lista1, ...lista2, ...?lista3, if (insert) 7];

  Set<String> newSet = {'andre', 'paulo'};

  print(newSet);
}
