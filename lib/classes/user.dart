import 'dart:convert';

class User {
  int id;
  String nick;
  String email;
  int? points;

  User({
    required this.id,
    required this.nick,
    required this.email,
    this.points,
  });
  factory User.toMap(Map<String, dynamic> map) {
    return User(
      id: map['id'] ?? 0,
      nick: map['nome'] ?? "Não Informado",
      email: map['email'] ?? "Não Informado",
      points: map['points'] ?? 0,
    );
  }

  factory User.fromJson(String source) => User.toMap(json.decode(source));
}
