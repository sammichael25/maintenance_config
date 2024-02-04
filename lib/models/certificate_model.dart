// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:equatable/equatable.dart';

class CertificateModel extends Equatable {
  final String title;
  final String domain;
  final DateTime issueDate;
  final DateTime expiryDate;
  final List<String> allowedIps;

  const CertificateModel({
    required this.title,
    required this.domain,
    required this.issueDate,
    required this.expiryDate,
    required this.allowedIps,
  });

  CertificateModel copyWith({
    String? title,
    String? domain,
    DateTime? issueDate,
    DateTime? expiryDate,
    List<String>? allowedIps,
  }) {
    return CertificateModel(
      title: title ?? this.title,
      domain: domain ?? this.domain,
      issueDate: issueDate ?? this.issueDate,
      expiryDate: expiryDate ?? this.expiryDate,
      allowedIps: allowedIps ?? this.allowedIps,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'title': title,
      'domain': domain,
      'issueDate': issueDate.millisecondsSinceEpoch,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'allowedIps': allowedIps,
    };
  }

  factory CertificateModel.fromMap(Map<String, dynamic> map) {
    return CertificateModel(
      title: map['title'] as String,
      domain: map['domain'] as String,
      issueDate: DateTime.fromMillisecondsSinceEpoch(map['issueDate'] as int),
      expiryDate: DateTime.fromMillisecondsSinceEpoch(map['expiryDate'] as int),
      allowedIps: List<String>.from((map['allowedIps'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory CertificateModel.fromJson(String source) => CertificateModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      title,
      domain,
      issueDate,
      expiryDate,
      allowedIps,
    ];
  }
}
