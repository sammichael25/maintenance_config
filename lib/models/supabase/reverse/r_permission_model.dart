import 'dart:convert';

import 'package:equatable/equatable.dart';

class RPermission extends Equatable {
  final int id;
  final String name;

  const RPermission({
    required this.id,
    required this.name,
  });

  static const RPermission empty = RPermission(id: 0, name: '');

  bool get isEmpty => this == RPermission.empty;

  bool get isNotEmpty => this != RPermission.empty;

  RPermission copyWith({
    int? id,
    String? name,
  }) {
    return RPermission(
      id: id ?? this.id,
      name: name ?? this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
    };
  }

  factory RPermission.fromMap(Map<String, dynamic> map) {
    return RPermission(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory RPermission.fromJson(String source) => RPermission.fromMap(json.decode(source));

  @override
  String toString() => '{id: $id, name: $name}';

  @override
  List<Object?> get props => [id, name];
}
