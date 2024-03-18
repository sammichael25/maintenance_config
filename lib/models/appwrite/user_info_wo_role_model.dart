// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';

class UserInfoWORole {
  String id;
  String workstationIp;

  UserInfoWORole({
    required this.id,
    required this.workstationIp,
  });

  UserInfoWORole copyWith({
    String? id,
    String? workstationIp,
  }) {
    return UserInfoWORole(
      id: id ?? this.id,
      workstationIp: workstationIp ?? this.workstationIp,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'workstationIp': workstationIp,
    };
  }

  factory UserInfoWORole.fromMap(Map<String, dynamic> map) {
    return UserInfoWORole(
      id: map['\$id'] as String,
      workstationIp: map['workstationIp'] as String,
    );
  }

  factory UserInfoWORole.fromDoc(Document doc) {
    return UserInfoWORole(
      id: doc.$id,
      workstationIp: doc.data['workstationIp'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserInfoWORole.fromJson(String source) => UserInfoWORole.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'UserInfoWORole(id: $id, workstationIp: $workstationIp)';

  @override
  bool operator ==(covariant UserInfoWORole other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.workstationIp == workstationIp;
  }

  @override
  int get hashCode => id.hashCode ^ workstationIp.hashCode;
}
