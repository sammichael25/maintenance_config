// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dart_appwrite/models.dart';

import 'package:maintenance_config/models/user_permission_model.dart';

class UserRoleWOGroupNUserInfo {
  String id;
  String name;
  String? roleDesc;
  List<UserPermission> permissions;

  UserRoleWOGroupNUserInfo({
    required this.id,
    required this.name,
    this.roleDesc,
    required this.permissions,
  });

  UserRoleWOGroupNUserInfo copyWith({
    String? id,
    String? name,
    String? roleDesc,
    List<UserPermission>? permissions,
  }) {
    return UserRoleWOGroupNUserInfo(
      id: id ?? this.id,
      name: name ?? this.name,
      roleDesc: roleDesc ?? this.roleDesc,
      permissions: permissions ?? this.permissions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'name': name,
      'roleDesc': roleDesc,
      'permissions': permissions.map((x) => x.toMap()).toList(),
    };
  }

  factory UserRoleWOGroupNUserInfo.fromMap(Map<String, dynamic> map) {
    return UserRoleWOGroupNUserInfo(
      id: map['\$id'] as String,
      name: map['name'] as String,
      roleDesc: map['roleDesc'] != null ? map['roleDesc'] as String : null,
      permissions: List<UserPermission>.from((map['permissions']).map<UserPermission>((x) => UserPermission.fromMap(x as Map<String,dynamic>),),),
    );
  }

  Map<String, dynamic> toNewDoc() {
    return <String, dynamic>{
      'name': name,
      'roleDesc': roleDesc,
      'permissions': permissions.map((x) => x.id).toList(), //Id used instead of x.toMap()
    };
  }

  factory UserRoleWOGroupNUserInfo.fromDoc(Document doc) {
    return UserRoleWOGroupNUserInfo(
      id: doc.$id,
      name: doc.data['name'] as String,
      roleDesc: doc.data['roleDesc'] != null ? doc.data['roleDesc'] as String : null,
      permissions: List<UserPermission>.from((doc.data['permissions']).map<UserPermission>((x) => UserPermission.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRoleWOGroupNUserInfo.fromJson(String source) => UserRoleWOGroupNUserInfo.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserRoleWOGroupNUserInfo(id: $id, name: $name, roleDesc: $roleDesc, permissions: $permissions)';
  }

  @override
  bool operator ==(covariant UserRoleWOGroupNUserInfo other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return 
      other.id == id &&
      other.name == name &&
      other.roleDesc == roleDesc &&
      listEquals(other.permissions, permissions);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      roleDesc.hashCode ^
      permissions.hashCode;
  }
}
