class Comission {
  final double value;
  final double percentage;
  final double comission;

  //"Comission2._internal" é para deixar privado e a palavra internal é opcional
  Comission._internal(this.value, this.percentage)
      : comission = value * percentage;

  factory Comission(double value, double percentage) {
    if (value > 10000) {
      percentage = 0.3;
      print("A comissão máxima para valores > 10.000 é 30%");
    }

    return Comission._internal(value, percentage);
  }
}

void main() {
  final calc = Comission(10001, .15);

  print(calc.comission);
}
