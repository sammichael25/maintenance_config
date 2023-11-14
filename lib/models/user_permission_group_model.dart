import 'dart:convert';

import 'package:dart_appwrite/models.dart';

class UserPermissionGroup {
  String id;
  String name;
  String? permissionDesc;

  UserPermissionGroup({
    required this.id,
    required this.name,
    this.permissionDesc,
  });

  UserPermissionGroup copyWith({
    String? id,
    String? name,
    String? permissionDesc,
  }) {
    return UserPermissionGroup(
      id: id ?? this.id,
      name: name ?? this.name,
      permissionDesc: permissionDesc ?? this.permissionDesc,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'name': name,
      'permissionDesc': permissionDesc,
    };
  }

  factory UserPermissionGroup.fromMap(Map<String, dynamic> map) {
    return UserPermissionGroup(
      id: map['\$id'] as String,
      name: map['name'] as String,
      permissionDesc: map['permissionDesc'] != null ? map['permissionDesc'] as String : null,
    );
  }

  factory UserPermissionGroup.fromDoc(Document doc) {
    return UserPermissionGroup(
      id: doc.$id,
      name: doc.data['name'] as String,
      permissionDesc: doc.data['permissionDesc'] != null ? doc.data['permissionDesc'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserPermissionGroup.fromJson(String source) => UserPermissionGroup.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserPermission(id: $id, name: $name, permissionDesc: $permissionDesc)';

  @override
  bool operator ==(covariant UserPermissionGroup other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.permissionDesc == permissionDesc;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ permissionDesc.hashCode;
}
