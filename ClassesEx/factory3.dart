class Padding {
  final double left, right, top, bottom;

  Padding({
    required this.left,
    required this.top,
    required this.right,
    required this.bottom,
  });

  factory Padding.vertical(double padding) {
    return Padding(left: 0, top: padding, right: 0, bottom: padding);
  }
}

void main() {
  final padding = Padding.vertical(10);

  print(padding.bottom);
}
