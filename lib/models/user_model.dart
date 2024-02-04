// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:maintenance_config/models/user_info_base_model.dart';

class UserModel extends Equatable {

  final String userDn;
  final  String email;
  final  String fname;
  final  String lname;
  final  String? title;
  final  String? ipPhone;
  final  UserInfoBase userInfo;
  
  const UserModel({
    required this.userDn,
    required this.email,
    required this.fname,
    required this.lname,
    this.title,
    this.ipPhone,
    required this.userInfo,
  });

  UserModel copyWith({
    String? userDn,
    String? email,
    String? fname,
    String? lname,
    String? title,
    String? ipPhone,
    UserInfoBase? userInfo,
  }) {
    return UserModel(
      userDn: userDn ?? this.userDn,
      email: email ?? this.email,
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      title: title ?? this.title,
      ipPhone: ipPhone ?? this.ipPhone,
      userInfo: userInfo ?? this.userInfo,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userDn': userDn,
      'email': email,
      'fname': fname,
      'lname': lname,
      'title': title,
      'ipPhone': ipPhone,
      'userInfo': userInfo.toMap(),
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      userDn: map['userDn'] as String,
      email: map['email'] as String,
      fname: map['fname'] as String,
      lname: map['lname'] as String,
      title: map['title'] != null ? map['title'] as String : null,
      ipPhone: map['ipPhone'] != null ? map['ipPhone'] as String : null,
      userInfo: UserInfoBase.fromMap(map['userInfo'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(userDn: $userDn, email: $email, fname: $fname, lname: $lname, title: $title, ipPhone: $ipPhone, userInfo: $userInfo)';
  }

  static const UserModel empty = UserModel(userDn: '', email: '', fname: '', lname: '', title: '', ipPhone: '', userInfo: UserInfoBase.empty);

  bool get isEmpty => this == UserModel.empty;

  bool get isNotEmpty => this != UserModel.empty;

  @override
  List<Object?> get props {
    return [
      userDn,
      email,
      fname,
      lname,
      title,
      ipPhone,
      userInfo,
    ];
  }
}
