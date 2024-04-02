import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/supabase/permission_model.dart';

class RRoleModel extends Equatable {
  final int id;
  final String name;
  final List<PermissionModel> permissions;

  const RRoleModel({
    required this.id,
    required this.name,
    required this.permissions,
  });

  static const RRoleModel empty = RRoleModel(id: 0, name: '', permissions: []);

  bool get isEmpty => this == RRoleModel.empty;

  bool get isNotEmpty => this != RRoleModel.empty;

  @override
  List<Object?> get props => [id, name, permissions];

  RRoleModel copyWith({
    int? id,
    String? name,
    List<PermissionModel>? permissions,
  }) {
    return RRoleModel(
      id: id ?? this.id,
      name: name ?? this.name,
      permissions: permissions ?? this.permissions,
    );
  }

  @override
  String toString() {
    return 'RRoleModel(id: $id, name: $name, permissions: $permissions)';
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'permissions': permissions.map((x) => x.toMap()).toList(),
    };
  }

  factory RRoleModel.fromMap(Map<String, dynamic> map) {
    return RRoleModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      permissions: List<PermissionModel>.from(map['permissions']?.map((x) => PermissionModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory RRoleModel.fromJson(String source) => RRoleModel.fromMap(json.decode(source));
}
