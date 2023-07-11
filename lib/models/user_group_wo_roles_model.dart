// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserGroupWORoles {
  String id;
  String name;
  String? groupDesc;
  UserGroupWORoles({
    required this.id,
    required this.name,
    this.groupDesc,
  });

  UserGroupWORoles copyWith({
    String? id,
    String? name,
    String? groupDesc,
  }) {
    return UserGroupWORoles(
      id: id ?? this.id,
      name: name ?? this.name,
      groupDesc: groupDesc ?? this.groupDesc,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'name': name,
      'groupDesc': groupDesc,
    };
  }

  factory UserGroupWORoles.fromMap(Map<String, dynamic> map) {
    return UserGroupWORoles(
      id: map['\$id'] as String,
      name: map['name'] as String,
      groupDesc: map['groupDesc'] != null ? map['groupDesc'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserGroupWORoles.fromJson(String source) => UserGroupWORoles.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserGroupWORoles(id: $id, name: $name, groupDesc: $groupDesc)';

  @override
  bool operator ==(covariant UserGroupWORoles other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.name == name &&
      other.groupDesc == groupDesc;
  }

  @override
  int get hashCode => id.hashCode ^ name.hashCode ^ groupDesc.hashCode;
}
