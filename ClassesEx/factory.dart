class User {
  final String name;
  final String email;

  User({
    required this.name,
    required this.email,
  });

  factory User.fromMap(Map<String, Object> map) {
    return User(name: map['name'] as String, email: map['email'] as String);
  }
}

class Teste {
  String name;

  Teste({required this.name});
}

void main() {
  final userMap = {'name': 'Diego', 'email': 'diego@teste.com'};
  final user = User.fromMap(userMap);
  final teste = User(name: "andre", email: "andre@.com");

  print(user.name);
  print(teste.name);
}
