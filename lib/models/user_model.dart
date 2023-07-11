// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:config/models/user_info_base_model.dart';

class UserModel {
  String userDn;
  String email;
  String fname;
  String lname;
  String? title;
  String? ipPhone;
  bool isLoggedIn;
  UserInfoBase userInfo;
  
  UserModel({
    required this.userDn,
    required this.email,
    required this.fname,
    required this.lname,
    this.title,
    this.ipPhone,
    required this.isLoggedIn,
    required this.userInfo,
  });

  UserModel copyWith({
    String? userDn,
    String? email,
    String? fname,
    String? lname,
    String? title,
    String? ipPhone,
    bool? isLoggedIn,
    UserInfoBase? userInfo,
  }) {
    return UserModel(
      userDn: userDn ?? this.userDn,
      email: email ?? this.email,
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      title: title ?? this.title,
      ipPhone: ipPhone ?? this.ipPhone,
      isLoggedIn: isLoggedIn ?? this.isLoggedIn,
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
      'isLoggedIn': isLoggedIn,
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
      isLoggedIn: map['isLoggedIn'] as bool,
      userInfo: UserInfoBase.fromMap(map['userInfo'] as Map<String,dynamic>),
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'UserModel(userDn: $userDn, email: $email, fname: $fname, lname: $lname, title: $title, ipPhone: $ipPhone, isLoggedIn: $isLoggedIn, userInfo: $userInfo)';
  }

  @override
  bool operator ==(covariant UserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.userDn == userDn &&
      other.email == email &&
      other.fname == fname &&
      other.lname == lname &&
      other.title == title &&
      other.ipPhone == ipPhone &&
      other.isLoggedIn == isLoggedIn &&
      other.userInfo == userInfo;
  }

  @override
  int get hashCode {
    return userDn.hashCode ^
      email.hashCode ^
      fname.hashCode ^
      lname.hashCode ^
      title.hashCode ^
      ipPhone.hashCode ^
      isLoggedIn.hashCode ^
      userInfo.hashCode;
  }
}
