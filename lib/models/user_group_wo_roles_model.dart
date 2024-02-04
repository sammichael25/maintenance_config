// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';

class UserGroupWORoles extends Equatable {
  final String id;
  final String name;
  final String? groupDesc;

  const UserGroupWORoles({
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

  Map<String, dynamic> toNewDoc() {
    return <String, dynamic>{
      'name': name,
      'groupDesc': groupDesc,
    };
  }

  factory UserGroupWORoles.fromDoc(Document doc) {
    return UserGroupWORoles(
      id: doc.$id,
      name: doc.data['name'] as String,
      groupDesc: doc.data['groupDesc'] != null ? doc.data['groupDesc'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserGroupWORoles.fromJson(String source) => UserGroupWORoles.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserGroupWORoles(id: $id, name: $name, groupDesc: $groupDesc)';

  static const UserGroupWORoles empty = UserGroupWORoles(id: '', name: '', groupDesc: '');

  bool get isEmpty => this == UserGroupWORoles.empty;

  bool get isNotEmpty => this != UserGroupWORoles.empty;

  @override
  List<Object?> get props => [id, name, groupDesc];
}
