// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserPermission {
  String id;
  String name;
  String? permissionDesc;
  UserPermission({
    required this.id,
    required this.name,
    this.permissionDesc,
  });

  UserPermission copyWith({
    String? id,
    String? name,
    String? permissionDesc,
  }) {
    return UserPermission(
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

  factory UserPermission.fromMap(Map<String, dynamic> map) {
    return UserPermission(
      id: map['\$id'] as String,
      name: map['name'] as String,
      permissionDesc: map['permissionDesc'] != null ? map['permissionDesc'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserPermission.fromJson(String source) => UserPermission.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserPermission(id: $id, name: $name, permissionDesc: $permissionDesc)';

  @override
  bool operator ==(covariant UserPermission other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.permissionDesc == permissionDesc;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ permissionDesc.hashCode;
}
