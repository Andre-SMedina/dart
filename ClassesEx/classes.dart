class Comission {
  final double value;
  final double percentage;
  final double comission;

  Comission(this.value, this.percentage) : comission = value * percentage;
}

void main() {
  final calc = Comission(1000, 15);

  print(calc.comission);
}
