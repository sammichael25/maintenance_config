// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dart_appwrite/models.dart';

import 'package:maintenance_config/models/user_group_wo_roles_model.dart';
import 'package:maintenance_config/models/user_info_wo_role_model.dart';
import 'package:maintenance_config/models/user_permission_model.dart';

class UserRoleBase {
  String id;
  String name;
  String? roleDesc;
  UserGroupWORoles group;
  List<UserInfoWORole> userInfo;
  List<UserPermission> permissions;

  UserRoleBase({
    required this.id,
    required this.name,
    this.roleDesc,
    required this.group,
    required this.userInfo,
    required this.permissions,
  });

  UserRoleBase copyWith({
    String? id,
    String? name,
    String? roleDesc,
    UserGroupWORoles? group,
    List<UserInfoWORole>? userInfo,
    List<UserPermission>? permissions,
  }) {
    return UserRoleBase(
      id: id ?? this.id,
      name: name ?? this.name,
      roleDesc: roleDesc ?? this.roleDesc,
      group: group ?? this.group,
      userInfo: userInfo ?? this.userInfo,
      permissions: permissions ?? this.permissions,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'name': name,
      'roleDesc': roleDesc,
      'group': group.toMap(),
      'userInfo': userInfo.map((x) => x.toMap()).toList(),
      'permissions': permissions.map((x) => x.toMap()).toList(),
    };
  }

  factory UserRoleBase.fromMap(Map<String, dynamic> map) {
    return UserRoleBase(
      id: map['\$id'] as String,
      name: map['name'] as String,
      roleDesc: map['roleDesc'] != null ? map['roleDesc'] as String : null,
      group: UserGroupWORoles.fromMap(map['group'] as Map<String,dynamic>),
      userInfo: List<UserInfoWORole>.from((map['userInfo']).map<UserInfoWORole>((x) => UserInfoWORole.fromMap(x as Map<String,dynamic>),),),
      permissions: List<UserPermission>.from((map['permissions']).map<UserPermission>((x) => UserPermission.fromMap(x as Map<String,dynamic>),),),
    );
  }

  factory UserRoleBase.fromDoc(Document doc) {
    return UserRoleBase(
      id: doc.$id,
      name: doc.data['name'] as String,
      roleDesc: doc.data['roleDesc'] != null ? doc.data['roleDesc'] as String : null,
      group: UserGroupWORoles.fromMap(doc.data['group'] as Map<String,dynamic>),
      userInfo: List<UserInfoWORole>.from((doc.data['userInfo']).map<UserInfoWORole>((x) => UserInfoWORole.fromMap(x as Map<String,dynamic>),),),
      permissions: List<UserPermission>.from((doc.data['permissions']).map<UserPermission>((x) => UserPermission.fromMap(x as Map<String,dynamic>),),),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserRoleBase.fromJson(String source) => UserRoleBase.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserRoleBase(id: $id, name: $name, roleDesc: $roleDesc, group: $group, userInfo: $userInfo, permissions: $permissions)';
  }

  @override
  bool operator ==(covariant UserRoleBase other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;
  
    return 
      other.id == id &&
      other.name == name &&
      other.roleDesc == roleDesc &&
      other.group == group &&
      listEquals(other.userInfo, userInfo) &&
      listEquals(other.permissions, permissions);
  }

  @override
  int get hashCode {
    return id.hashCode ^
      name.hashCode ^
      roleDesc.hashCode ^
      group.hashCode ^
      userInfo.hashCode ^
      permissions.hashCode;
  }
}
