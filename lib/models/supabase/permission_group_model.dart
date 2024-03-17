import 'dart:convert';

import 'package:equatable/equatable.dart';

class PermissionGroupModel extends Equatable {
  final int id;
  final String name;

  const PermissionGroupModel({
    required this.id,
    required this.name,
  });

  static const PermissionGroupModel empty = PermissionGroupModel(id: -1, name: '');

  bool get isEmpty => this == PermissionGroupModel.empty;

  bool get isNotEmpty => this != PermissionGroupModel.empty;

  @override
  List<Object> get props => [id, name];

  PermissionGroupModel copyWith({
    int? id,
    String? name,
  }) {
    return PermissionGroupModel(
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

  factory PermissionGroupModel.fromMap(Map<String, dynamic> map) {
    return PermissionGroupModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory PermissionGroupModel.fromJson(String source) => PermissionGroupModel.fromMap(json.decode(source));

  @override
  String toString() => '{"id": $id, "name": $name}';
}
