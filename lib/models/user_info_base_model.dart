// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:maintenance_config/models/user_role_wo_user_info_model.dart';

class UserInfoBase {
  String id;
  String workstationIp;
  UserRoleWOUserInfo role;
  UserInfoBase({
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

  String toJson() => json.encode(toMap());

  factory UserInfoBase.fromJson(String source) => UserInfoBase.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserInfoBase(id: $id, workstationIp: $workstationIp, role: $role)';

  @override
  bool operator ==(covariant UserInfoBase other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.workstationIp == workstationIp &&
      other.role == role;
  }

  @override
  int get hashCode => id.hashCode ^ workstationIp.hashCode ^ role.hashCode;
}
