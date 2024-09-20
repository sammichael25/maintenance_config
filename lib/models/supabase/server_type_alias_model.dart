import 'dart:convert';

import 'package:equatable/equatable.dart';

class ServerTypeAliasModel extends Equatable {
  final int id;
  final String alias;

  const ServerTypeAliasModel({
    required this.id,
    required this.alias,
  });

  @override
  List<Object?> get props => [id, alias];

  static const ServerTypeAliasModel empty = ServerTypeAliasModel(id: -1, alias: '');

  bool get isEmpty => this == ServerTypeAliasModel.empty;

  bool get isNotEmpty => this != ServerTypeAliasModel.empty;

  ServerTypeAliasModel copyWith({
    int? id,
    String? alias,
  }) {
    return ServerTypeAliasModel(
      id: id ?? this.id,
      alias: alias ?? this.alias,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'alias': alias,
    };
  }

  factory ServerTypeAliasModel.fromMap(Map<String, dynamic> map) {
    return ServerTypeAliasModel(
      id: map['id']?.toInt() ?? 0,
      alias: map['alias'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory ServerTypeAliasModel.fromJson(String source) => ServerTypeAliasModel.fromMap(json.decode(source));

  @override
  String toString() => 'ServerTypeAliasModel(id: $id, alias: $alias)';
}
