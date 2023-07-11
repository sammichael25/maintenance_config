import 'dart:convert';

// ignore_for_file: public_member_api_docs, sort_constructors_first
class ADUserModel {
  String userId;
  String userDN;
  String email;
  String fname;
  String lname;
  String? title;
  String? ipPhone;

  ADUserModel({
    required this.userId,
    required this.userDN,
    required this.email,
    required this.fname,
    required this.lname,
    this.title,
    this.ipPhone,
  });

  @override
  String toString() {
    return 'ADUserModel(userId: $userId, userDN: $userDN, email: $email, fname: $fname, lname: $lname, title: $title, ipPhone: $ipPhone)';
  }

  @override
  bool operator ==(covariant ADUserModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.userId == userId &&
      other.userDN == userDN &&
      other.email == email &&
      other.fname == fname &&
      other.lname == lname &&
      other.title == title &&
      other.ipPhone == ipPhone;
  }

  @override
  int get hashCode {
    return userId.hashCode ^
      userDN.hashCode ^
      email.hashCode ^
      fname.hashCode ^
      lname.hashCode ^
      title.hashCode ^
      ipPhone.hashCode;
  }

  ADUserModel copyWith({
    String? userId,
    String? userDN,
    String? email,
    String? fname,
    String? lname,
    String? title,
    String? ipPhone,
  }) {
    return ADUserModel(
      userId: userId ?? this.userId,
      userDN: userDN ?? this.userDN,
      email: email ?? this.email,
      fname: fname ?? this.fname,
      lname: lname ?? this.lname,
      title: title ?? this.title,
      ipPhone: ipPhone ?? this.ipPhone,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'userId': userId,
      'userDN': userDN,
      'email': email,
      'fname': fname,
      'lname': lname,
      'title': title,
      'ipPhone': ipPhone,
    };
  }

  factory ADUserModel.fromMap(Map<String, dynamic> map) {
    return ADUserModel(
      userId: map['userId'] as String,
      userDN: map['userDN'] as String,
      email: map['email'] as String,
      fname: map['fname'] as String,
      lname: map['lname'] as String,
      title: map['title'] != null ? map['title'] as String : null,
      ipPhone: map['ipPhone'] != null ? map['ipPhone'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory ADUserModel.fromJson(String source) => ADUserModel.fromMap(json.decode(source) as Map<String, dynamic>);
}
