import 'package:equatable/equatable.dart';

class Pokemon extends Equatable {
  const Pokemon({
    required this.name,
    required this.url,
  });

  factory Pokemon.fromJson(Map<String, dynamic> json) {
    return Pokemon(
      name: json["name"],
      url: json["url"],
    );
  }

  final String name;
  final String url;

  @override
  List<Object?> get props => [name, url];
}
