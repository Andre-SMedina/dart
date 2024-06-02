abstract class Pessoa {
  String comunicar();
}

class Et implements Pessoa {
  @override
  String comunicar() {
    return 'Olá Mundo';
  }
}

class Humano implements Pessoa {
  @override
  String comunicar() {
    return 'Bom dia';
  }
}

void main() {
  print(Et().comunicar());
  print(Humano().comunicar());
}
