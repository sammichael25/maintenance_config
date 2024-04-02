import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/supabase/reverse/r_permission_model.dart';


class RPermissionGroup extends Equatable {
  final int id;
  final String name;
  final List<RPermission> permissions;

  const RPermissionGroup({
    required this.id,
    required this.name,
    required this.permissions,
  });

  static const RPermissionGroup empty = RPermissionGroup(id: 0, name: '', permissions: []);

  bool get isEmpty => this == RPermissionGroup.empty;

  bool get isNotEmpty => this != RPermissionGroup.empty;

  RPermissionGroup copyWith({
    int? id,
    String? name,
    List<RPermission>? permissions,
  }) {
    return RPermissionGroup(
      id: id ?? this.id,
      name: name ?? this.name,
      permissions: permissions ?? this.permissions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'permissions': permissions.map((x) => x.toMap()).toList(),
    };
  }

  factory RPermissionGroup.fromMap(Map<String, dynamic> map) {
    return RPermissionGroup(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      permissions: List<RPermission>.from(map['permissions']?.map((x) => RPermission.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory RPermissionGroup.fromJson(String source) => RPermissionGroup.fromMap(json.decode(source));

  @override
  String toString() => '{id: $id, name: $name, permissions: $permissions}';

  @override
  List<Object> get props => [id, name, permissions];
}
