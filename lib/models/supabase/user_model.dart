import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maintenance_config/config.dart';
import 'package:maintenance_config/models/basic_types.dart';
import 'package:maintenance_config/models/supabase/permission_model.dart';

import 'package:maintenance_config/models/supabase/role_model.dart';

class SupabaseUserModel extends Equatable {
  final String id;
  final String employeeId;
  final String firstName;
  final String lastName;
  final String email;
  final String userDN;
  final String? title;
  final String? ipPhone;
  final String workstationIp;
  final RoleModel role;

  const SupabaseUserModel({
    required this.id,
    required this.employeeId,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.userDN,
    this.title,
    this.ipPhone,
    required this.workstationIp,
    required this.role,
  });

  static const SupabaseUserModel empty = SupabaseUserModel(id: '', employeeId: '', firstName: '', lastName: '', email: '', userDN: '', workstationIp: '', role: RoleModel.empty);

  bool get isEmpty => this == SupabaseUserModel.empty;

  bool get isNotEmpty => this != SupabaseUserModel.empty;

  SupabaseUserModel copyWith({
    String? id,
    String? employeeId,
    String? firstName,
    String? lastName,
    String? email,
    String? userDN,
    ValueGetter<String?>? title,
    ValueGetter<String?>? ipPhone,
    String? workstationIp,
    RoleModel? role,
  }) {
    return SupabaseUserModel(
      id: id ?? this.id,
      employeeId: employeeId ?? this.employeeId,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      userDN: userDN ?? this.userDN,
      title: title != null ? title() : this.title,
      ipPhone: ipPhone != null ? ipPhone() : this.ipPhone,
      workstationIp: workstationIp ?? this.workstationIp,
      role: role ?? this.role,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'employeeId': employeeId,
      'firstName': firstName,
      'lastName': lastName,
      'email': email,
      'userDN': userDN,
      'title': title,
      'ipPhone': ipPhone,
      'workstationIp': workstationIp,
      'role': role.toMap(),
    };
  }

  factory SupabaseUserModel.fromMap(Map<String, dynamic> map) {
    return SupabaseUserModel(
      id: map['id'] ?? '',
      employeeId: map['employeeId'] ?? '',
      firstName: map['firstName'] ?? '',
      lastName: map['lastName'] ?? '',
      email: map['email'] ?? '',
      userDN: map['userDN'] ?? '',
      title: map['title'],
      ipPhone: map['ipPhone'],
      workstationIp: map['workstationIp'] ?? '',
      role: RoleModel.fromMap(map['role']),
    );
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'employee_id': employeeId,
      'first_name': firstName,
      'last_name': lastName,
      'user_dn': userDN,
      'job_title': title,
      'phone_extension': ipPhone,
      'workstation_ip': workstationIp,
      'role': role.toMap(),
    };
  }

  factory SupabaseUserModel.fromDoc(Map<String, dynamic> map) {
    return SupabaseUserModel(
      id: map['id'] ?? '',
      employeeId: map['employee_id'] ?? '',
      firstName: map['first_name'] ?? '',
      lastName: map['last_name'] ?? '',
      email: map['email'] ?? '',
      userDN: map['user_dn'] ?? '',
      title: map['job_title'],
      ipPhone: map['phone_extension'],
      workstationIp: map['workstation_ip'] ?? '',
      role: RoleModel.fromDoc(map['role']),
    );
  }

  String toJson() => json.encode(toMap());

  factory SupabaseUserModel.fromJson(String source) => SupabaseUserModel.fromMap(json.decode(source));

  @override
  String toString() {
    return '{"id": $id, "employeeId": $employeeId, "firstName": $firstName, "lastName": $lastName, "email": $email, "userDN": $userDN, "title": $title, "ipPhone": $ipPhone, "workstationIp": $workstationIp, "role": $role}';
  }

  @override
  List<Object?> get props {
    return [
      id,
      employeeId,
      firstName,
      lastName,
      email,
      userDN,
      title,
      ipPhone,
      workstationIp,
      role,
    ];
  }

  bool isAuthorizedTo(String permission) {
    if (id == ConfigService.configs.superAdminUserId) {
      return true;
    }
    if (role.permissions.isEmpty) {
      return false;
    }
    for (PermissionModel currPermission in role.permissions) {
      String formattedPermission = permission.replaceAll(RegExp(r'_'), ' ');
      if (currPermission.name.toLowerCase() == formattedPermission.toLowerCase() ||
          currPermission.permissionGroup.name.toLowerCase() == formattedPermission.toLowerCase()) {
        return true;
      }
    }
    return false;
  }
}
