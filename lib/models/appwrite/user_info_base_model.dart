// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';

import 'package:maintenance_config/models/appwrite/user_role_wo_user_info_model.dart';

class UserInfoBase extends Equatable {

  final String id;
  final String workstationIp;
  final UserRoleWOUserInfo role;

  const UserInfoBase({
    required this.id,
    required this.workstationIp,
    required this.role,
  });

  UserInfoBase copyWith({
    String? id,
    String? workstationIp,
    UserRoleWOUserInfo? role,
  }) {
    return UserInfoBase(
      id: id ?? this.id,
      workstationIp: workstationIp ?? this.workstationIp,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'workstationIp': workstationIp,
      'role': role.toMap(),
    };
  }

  factory UserInfoBase.fromMap(Map<String, dynamic> map) {
    return UserInfoBase(
      id: map['\$id'] as String,
      workstationIp: map['workstationIp'] as String,
      role: UserRoleWOUserInfo.fromMap(map['role'] as Map<String,dynamic>),
    );
  }

  Map<String, dynamic> toNewDoc() {
    return <String, dynamic>{
      'workstationIp': workstationIp,
      'role': role.toMap(),
    };
  }

  factory UserInfoBase.fromDoc(Document doc) {
    return UserInfoBase(
      id: doc.$id,
      workstationIp: doc.data['workstationIp'] as String,
      role: UserRoleWOUserInfo.fromMap(doc.data['role'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfoBase.fromJson(String source) => UserInfoBase.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserInfoBase(id: $id, workstationIp: $workstationIp, role: $role)';

  static const UserInfoBase empty = UserInfoBase(id: '', workstationIp: '', role: UserRoleWOUserInfo.empty);

  bool get isEmpty => this == UserInfoBase.empty;

  bool get isNotEmpty => this != UserInfoBase.empty;

  @override
  List<Object> get props => [id, workstationIp, role];
}
