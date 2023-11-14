// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:maintenance_config/models/user_permission_group_model.dart';

class UserPermission {
  String id;
  String name;
  String? permissionDesc;
  UserPermissionGroup permissionGroups;
  
  UserPermission({
    required this.id,
    required this.name,
    this.permissionDesc,
    required this.permissionGroups,
  });

  UserPermission copyWith({
    String? id,
    String? name,
    String? permissionDesc,
    UserPermissionGroup? permissionGroups,
  }) {
    return UserPermission(
      id: id ?? this.id,
      name: name ?? this.name,
      permissionDesc: permissionDesc ?? this.permissionDesc,
      permissionGroups: permissionGroups ?? this.permissionGroups,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'name': name,
      'permissionDesc': permissionDesc,
      'permissionGroup': permissionGroups.toMap(),
    };
  }

  factory UserPermission.fromMap(Map<String, dynamic> map) {
    return UserPermission(
      id: map['\$id'] as String,
      name: map['name'] as String,
      permissionDesc: map['permissionDesc'] != null ? map['permissionDesc'] as String : null,
      permissionGroups: UserPermissionGroup.fromMap(map['permissionGroups'] as Map<String,dynamic>)
    );
  }

  factory UserPermission.fromDoc(Document doc) {
    return UserPermission(
      id: doc.$id,
      name: doc.data['name'] as String,
      permissionDesc: doc.data['permissionDesc'] != null ? doc.data['permissionDesc'] as String : null,
      permissionGroups: UserPermissionGroup.fromMap(doc.data['permissionGroups'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserPermission.fromJson(String source) => UserPermission.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserPermission(id: $id, name: $name, permissionDesc: $permissionDesc, permissionGroups: $permissionGroups)';

  @override
  bool operator ==(covariant UserPermission other) {
    if (identical(this, other)) return true;

    return other.id == id && other.name == name && other.permissionDesc == permissionDesc && other.permissionGroups == permissionGroups;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ permissionDesc.hashCode ^ permissionGroups.hashCode;
}
