// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';

import 'package:maintenance_config/models/appwrite/user_group_wo_roles_model.dart';
import 'package:maintenance_config/models/appwrite/user_permission_model.dart';

class UserRoleWOUserInfo extends Equatable {
  final String id;
  final String name;
  final String? roleDesc;
  final UserGroupWORoles group;
  final List<UserPermission> permissions;

  const UserRoleWOUserInfo({
    required this.id,
    required this.name,
    this.roleDesc,
    required this.group,
    required this.permissions,
  });

  UserRoleWOUserInfo copyWith({
    String? id,
    String? name,
    String? roleDesc,
    UserGroupWORoles? group,
    List<UserPermission>? permissions,
  }) {
    return UserRoleWOUserInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      roleDesc: roleDesc ?? this.roleDesc,
      group: group ?? this.group,
      permissions: permissions ?? this.permissions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'name': name,
      'roleDesc': roleDesc,
      'group': group.toMap(),
      'permissions': permissions.map((x) => x.toMap()).toList(),
    };
  }

  factory UserRoleWOUserInfo.fromMap(Map<String, dynamic> map) {
    return UserRoleWOUserInfo(
      id: map['\$id'] as String,
      name: map['name'] as String,
      roleDesc: map['roleDesc'] != null ? map['roleDesc'] as String : null,
      group: UserGroupWORoles.fromMap(map['group'] as Map<String,dynamic>),
      permissions: List<UserPermission>.from((map['permissions']).map<UserPermission>((x) => UserPermission.fromMap(x as Map<String,dynamic>),),),
    );
  }

  factory UserRoleWOUserInfo.fromDoc(Document doc) {
    return UserRoleWOUserInfo(
      id: doc.$id,
      name: doc.data['name'] as String,
      roleDesc: doc.data['roleDesc'] != null ? doc.data['roleDesc'] as String : null,
      group: UserGroupWORoles.fromMap(doc.data['group'] as Map<String,dynamic>),
      permissions: List<UserPermission>.from((doc.data['permissions']).map<UserPermission>((x) => UserPermission.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRoleWOUserInfo.fromJson(String source) => UserRoleWOUserInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserRoleWOUserInfo(id: $id, name: $name, roleDesc: $roleDesc, group: $group, permissions: $permissions)';
  }

  static const UserRoleWOUserInfo empty = UserRoleWOUserInfo(id: '', name: '', roleDesc: '', group: UserGroupWORoles.empty, permissions: []);

  bool get isEmpty => this == UserRoleWOUserInfo.empty;

  bool get isNotEmpty => this != UserRoleWOUserInfo.empty;

  @override
  List<Object?> get props {
    return [
      id,
      name,
      roleDesc,
      group,
      permissions,
    ];
  }
}
