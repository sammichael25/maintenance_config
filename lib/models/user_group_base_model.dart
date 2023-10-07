// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:collection/collection.dart';
import 'package:dart_appwrite/models.dart';

import 'package:maintenance_config/models/user_role_wo_group_n_user_info_model.dart';

class UserGroupBase {
  String id;
  String name;
  String? groupDesc;
  List<UserRoleWOGroupNUserInfo> roles;

  UserGroupBase({
    required this.id,
    required this.name,
    this.groupDesc,
    required this.roles,
  });

  UserGroupBase copyWith({
    String? id,
    String? name,
    String? groupDesc,
    List<UserRoleWOGroupNUserInfo>? roles,
  }) {
    return UserGroupBase(
      id: id ?? this.id,
      name: name ?? this.name,
      groupDesc: groupDesc ?? this.groupDesc,
      roles: roles ?? this.roles,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'name': name,
      'groupDesc': groupDesc,
      'roles': roles.map((x) => x.toMap()).toList(),
    };
  }

  factory UserGroupBase.fromMap(Map<String, dynamic> map) {
    return UserGroupBase(
      id: map['\$id'] as String,
      name: map['name'] as String,
      groupDesc: map['groupDesc'] != null ? map['groupDesc'] as String : null,
      roles: List<UserRoleWOGroupNUserInfo>.from(
        (map['roles']).map<UserRoleWOGroupNUserInfo>(
          (x) => UserRoleWOGroupNUserInfo.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  Map<String, dynamic> toNewDoc() {
    return <String, dynamic>{
      'name': name,
      'groupDesc': groupDesc,
      'roles': roles.map((x) => x.toNewDoc()).toList(),
    };
  }

  factory UserGroupBase.fromDoc(Document doc) {
    return UserGroupBase(
      id: doc.$id,
      name: doc.data['name'] as String,
      groupDesc: doc.data['groupDesc'] != null ? doc.data['groupDesc'] as String : null,
      roles: List<UserRoleWOGroupNUserInfo>.from(
        (doc.data['roles']).map<UserRoleWOGroupNUserInfo>(
          (x) => UserRoleWOGroupNUserInfo.fromMap(x as Map<String, dynamic>),
        ),
      ),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserGroupBase.fromJson(String source) => UserGroupBase.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserGroupBase(id: $id, name: $name, groupDesc: $groupDesc, roles: $roles)';
  }

  @override
  bool operator ==(covariant UserGroupBase other) {
    if (identical(this, other)) return true;
    final listEquals = const DeepCollectionEquality().equals;

    return other.id == id && other.name == name && other.groupDesc == groupDesc && listEquals(other.roles, roles);
  }

  @override
  int get hashCode {
    return id.hashCode ^ name.hashCode ^ groupDesc.hashCode ^ roles.hashCode;
  }
}
