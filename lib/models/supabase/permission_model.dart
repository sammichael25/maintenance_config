import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/basic_types.dart';

import 'package:maintenance_config/models/supabase/permission_group_model.dart';

class PermissionModel extends Equatable {
  final int id;
  final String name;
  final String? description;
  final PermissionGroupModel permissionGroup;

  const PermissionModel({
    required this.id,
    required this.name,
    required this.description,
    required this.permissionGroup,
  });

  static const PermissionModel empty = PermissionModel(id: -1, name: '', description: '', permissionGroup: PermissionGroupModel.empty);

  bool get isEmpty => this == PermissionModel.empty;

  bool get isNotEmpty => this != PermissionModel.empty;

  PermissionModel copyWith({
    int? id,
    String? name,
    ValueGetter<String?>? description,
    PermissionGroupModel? permissionGroup,
  }) {
    return PermissionModel(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description != null ? description() : this.description,
      permissionGroup: permissionGroup ?? this.permissionGroup,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'permissionGroup': permissionGroup.toMap(),
    };
  }

  factory PermissionModel.fromMap(Map<String, dynamic> map) {
    return PermissionModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'],
      permissionGroup: PermissionGroupModel.fromMap(map['permissionGroup']),
    );
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'name': name,
      'description': description,
      'permission_group': permissionGroup.toMap(),
    };
  }

  factory PermissionModel.fromDoc(Map<String, dynamic> map) {
    return PermissionModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      description: map['description'],
      permissionGroup: PermissionGroupModel.fromMap(map['permission_group']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PermissionModel.fromJson(String source) => PermissionModel.fromMap(json.decode(source));

  @override
  String toString() {
    return '{"id": $id, "name": $name, "description": $description, "permissionGroup": $permissionGroup}';
  }

  @override
  List<Object?> get props => [id, name, description, permissionGroup];
}
