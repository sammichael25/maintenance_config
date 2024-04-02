import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/supabase/reverse/r_role_model.dart';

class RDepartmentModel extends Equatable {
  final int id;
  final String name;
  final List<RRoleModel> roles;

  const RDepartmentModel({
    required this.id,
    required this.name,
    required this.roles,
  });

  static const RDepartmentModel empty = RDepartmentModel(id: 0, name: '', roles: []);

  bool get isEmpty => this == RDepartmentModel.empty;

  bool get isNotEmpty => this != RDepartmentModel.empty;

  @override
  List<Object?> get props => [id, name, roles];

  RDepartmentModel copyWith({
    int? id,
    String? name,
    List<RRoleModel>? roles,
  }) {
    return RDepartmentModel(
      id: id ?? this.id,
      name: name ?? this.name,
      roles: roles ?? this.roles,
    );
  }

  @override
  String toString() => 'RDepartmentModel(id: $id, name: $name, roles: $roles)';

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'roles': roles.map((x) => x.toMap()).toList(),
    };
  }

  factory RDepartmentModel.fromMap(Map<String, dynamic> map) {
    return RDepartmentModel(
      id: map['id'] ?? '',
      name: map['name'] ?? '',
      roles: List<RRoleModel>.from(map['roles']?.map((x) => RRoleModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory RDepartmentModel.fromJson(String source) => RDepartmentModel.fromMap(json.decode(source));
}
