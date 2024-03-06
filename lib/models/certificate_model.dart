// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';

class CertificateModel extends Equatable {
  final String id;
  final String title;
  final String domain;
  final DateTime issueDate;
  final DateTime expiryDate;
  final List<String> allowedIps;

  CertificateModel({
    required this.id,
    required this.title,
    required this.domain,
    required this.issueDate,
    required this.expiryDate,
    required this.allowedIps,
  });

  static CertificateModel empty = CertificateModel(id: '', title: '', domain: '', issueDate: DateTime.now(), expiryDate: DateTime.now(), allowedIps: []);

  bool get isEmpty => this == CertificateModel.empty;
  bool get isNotEmpty => this != CertificateModel.empty;

  CertificateModel copyWith({
    String? id,
    String? title,
    String? domain,
    DateTime? issueDate,
    DateTime? expiryDate,
    List<String>? allowedIps,
  }) {
    return CertificateModel(
      id: id ?? this.id,
      title: title ?? this.title,
      domain: domain ?? this.domain,
      issueDate: issueDate ?? this.issueDate,
      expiryDate: expiryDate ?? this.expiryDate,
      allowedIps: allowedIps ?? this.allowedIps,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'title': title,
      'domain': domain,
      'issueDate': issueDate.millisecondsSinceEpoch,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'allowedIps': allowedIps,
    };
  }

  Map<String, dynamic> toDoc() {
    return <String, dynamic>{
      '\$id': id,
      'title': title,
      'domain': domain,
      'issueDate': issueDate.millisecondsSinceEpoch,
      'expiryDate': expiryDate.millisecondsSinceEpoch,
      'allowedIps': allowedIps,
    };
  }

  Map<String, dynamic> toNewDoc() {
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
      id: map['\$id'] as String,
      title: map['title'] as String,
      domain: map['domain'] as String,
      issueDate: DateTime.fromMillisecondsSinceEpoch(map['issueDate'] as int),
      expiryDate: DateTime.fromMillisecondsSinceEpoch(map['expiryDate'] as int),
      allowedIps: List<String>.from((map['allowedIps'] as List<String>)),
    );
  }

  factory CertificateModel.fromDoc(Document doc) {
    return CertificateModel(
      id: doc.$id,
      title: doc.data['title'] as String,
      domain: doc.data['domain'] as String,
      issueDate: DateTime.fromMillisecondsSinceEpoch(doc.data['issueDate'] as int),
      expiryDate: DateTime.fromMillisecondsSinceEpoch(doc.data['expiryDate'] as int),
      allowedIps: List<String>.from((doc.data['allowedIps'] as List<String>)),
    );
  }

  String toJson() => json.encode(toMap());

  factory CertificateModel.fromJson(String source) => CertificateModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  bool get stringify => true;

  @override
  List<Object> get props {
    return [
      id,
      title,
      domain,
      issueDate,
      expiryDate,
      allowedIps,
    ];
  }
}
