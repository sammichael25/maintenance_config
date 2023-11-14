// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:maintenance_config/models/user_permission_group_model.dart';

class UserPermission {
  String id;
  String name;
  String? permissionDesc;
  UserPermissionGroup permissionGroup;
  
  UserPermission({
    required this.id,
    required this.name,
    this.permissionDesc,
    required this.permissionGroup,
  });

  UserPermission copyWith({
    String? id,
    String? name,
    String? permissionDesc,
    UserPermissionGroup? permissionGroup,
  }) {
    return UserPermission(
      id: id ?? this.id,
      name: name ?? this.name,
      permissionDesc: permissionDesc ?? this.permissionDesc,
      permissionGroup: permissionGroup ?? this.permissionGroup,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'name': name,
      'permissionDesc': permissionDesc,
      'permissionGroup': permissionGroup.toMap(),
    };
  }

  factory UserPermission.fromMap(Map<String, dynamic> map) {
    return UserPermission(
      id: map['\$id'] as String,
      name: map['name'] as String,
      permissionDesc: map['permissionDesc'] != null ? map['permissionDesc'] as String : null,
      permissionGroup: UserPermissionGroup.fromMap(map['permissionGroup'] as Map<String,dynamic>)
    );
  }

  factory UserPermission.fromDoc(Document doc) {
    return UserPermission(
      id: doc.$id,
      name: doc.data['name'] as String,
      permissionDesc: doc.data['permissionDesc'] != null ? doc.data['permissionDesc'] as String : null,
      permissionGroup: UserPermissionGroup.fromMap(doc.data['permissionGroup'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserPermission.fromJson(String source) => UserPermission.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserPermission(id: $id, name: $name, permissionDesc: $permissionDesc, permissionGroup: $permissionGroup)';

  @override
  bool operator ==(covariant UserPermission other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.permissionDesc == permissionDesc && other.permissionGroup == permissionGroup;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ permissionDesc.hashCode ^ permissionGroup.hashCode;
}
