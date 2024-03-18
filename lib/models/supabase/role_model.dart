import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:maintenance_config/models/supabase/department_model.dart';
import 'package:maintenance_config/models/supabase/permission_model.dart';

class RoleModel extends Equatable {
  final int id;
  final String name;
  final DepartmentModel department;
  final List<PermissionModel> permissions;

  const RoleModel({
    required this.id,
    required this.name,
    required this.department,
    required this.permissions,
  });

  static const RoleModel empty = RoleModel(id: -1, name: '', department: DepartmentModel.empty, permissions: <PermissionModel>[]);

  bool get isEmpty => this == RoleModel.empty;

  bool get isNotEmpty => this != RoleModel.empty;

  RoleModel copyWith({
    int? id,
    String? name,
    DepartmentModel? department,
    List<PermissionModel>? permissions,
  }) {
    return RoleModel(
      id: id ?? this.id,
      name: name ?? this.name,
      department: department ?? this.department,
      permissions: permissions ?? this.permissions,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'department': department.toMap(),
      'permissions': permissions.map((x) => x.toMap()).toList(),
    };
  }

  factory RoleModel.fromMap(Map<String, dynamic> map) {
    return RoleModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      department: DepartmentModel.fromMap(map['department']),
      permissions: List<PermissionModel>.from(map['permissions']?.map((x) => PermissionModel.fromMap(x))),
    );
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'name': name,
      'department': department.toMap(),
      'permissions': permissions.map((x) => x.toMap()).toList(),
    };
  }

  factory RoleModel.fromDoc(Map<String, dynamic> map) {
    return RoleModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      department: DepartmentModel.fromDoc(map['department']),
      permissions: List<PermissionModel>.from(map['permissions']?.map((x) => PermissionModel.fromDoc(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory RoleModel.fromJson(String source) => RoleModel.fromMap(json.decode(source));

  @override
  String toString() {
    return '{"id": $id, "name": $name, "department": $department, "permissions": $permissions}';
  }

  @override
  List<Object> get props => [id, name, department, permissions];
}
