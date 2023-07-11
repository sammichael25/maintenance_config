// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';

import 'package:config/models/user_group_wo_roles_model.dart';
import 'package:config/models/user_permission_model.dart';

class UserRoleWOUserInfo {
  String id;
  String name;
  String? roleDesc;
  UserGroupWORoles group;
  List<UserPermission> permissions;
  UserRoleWOUserInfo({
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

  String toJson() => json.encode(toMap());

  factory UserRoleWOUserInfo.fromJson(String source) => UserRoleWOUserInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserRoleWOUserInfo(id: $id, name: $name, roleDesc: $roleDesc, group: $group, permissions: $permissions)';
  }

  @override
  bool operator ==(covariant UserRoleWOUserInfo other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return 
      other.id == id &&
      other.name == name &&
      other.roleDesc == roleDesc &&
      other.group == group &&
      listEquals(other.permissions, permissions);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      roleDesc.hashCode ^
      group.hashCode ^
      permissions.hashCode;
  }
}
