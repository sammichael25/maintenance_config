import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/supabase/server_type_alias_model.dart';

class ServerTypeModel extends Equatable {
  final int id;
  final String type;
  final List<ServerTypeAliasModel> aliases;

  const ServerTypeModel({
    required this.id,
    required this.type,
    required this.aliases
  });

  @override
  List<Object?> get props => [id, type, aliases];

  static const ServerTypeModel empty = ServerTypeModel(id: -1, type: '', aliases: []);

  bool get isEmpty => this == ServerTypeModel.empty;

  bool get isNotEmpty => this != ServerTypeModel.empty;

  ServerTypeModel copyWith({
    int? id,
    String? type,
    List<ServerTypeAliasModel>? aliases,
  }) {
    return ServerTypeModel(
      id: id ?? this.id,
      type: type ?? this.type,
      aliases: aliases ?? this.aliases,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'type': type,
      'aliases': aliases.map((x) => x.toMap()).toList(),
    };
  }

  factory ServerTypeModel.fromMap(Map<String, dynamic> map) {
    return ServerTypeModel(
      id: map['id'] ?? '',
      type: map['type'] ?? '',
      aliases: List<ServerTypeAliasModel>.from(map['aliases']?.map((x) => ServerTypeAliasModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ServerTypeModel.fromJson(String source) => ServerTypeModel.fromMap(json.decode(source));

  @override
  String toString() => 'ServerTypeModel(id: $id, type: $type, "aliases": $aliases)';
}
