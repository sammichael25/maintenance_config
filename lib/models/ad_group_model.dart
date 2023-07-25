// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:dart_appwrite/models.dart';

class ADGroupModel {
  String id;
  String organizationalUnit;
  String parentOrganizationalUnit;

  ADGroupModel({
    required this.id,
    required this.organizationalUnit,
    required this.parentOrganizationalUnit
  });

  ADGroupModel copyWith({
    String? id,
    String? organizationalUnit,
    String? parentOrganizationalUnit,
  }) {
    return ADGroupModel(
      id: id ?? this.id,
      organizationalUnit: organizationalUnit ?? this.organizationalUnit,
      parentOrganizationalUnit: parentOrganizationalUnit ?? this.parentOrganizationalUnit,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      '\$id': id,
      'organizationalUnit': organizationalUnit,
      'parentOrganizationalUnit': parentOrganizationalUnit,
    };
  }

  factory ADGroupModel.fromMap(Map<String, dynamic> map) {
    return ADGroupModel(
      id: map['\$id'] as String,
      organizationalUnit: map['organizationalUnit'] as String,
      parentOrganizationalUnit: map['parentOrganizationalUnit'] as String,
    );
  }

  Map<String, dynamic> toNewDoc() {
    return <String, dynamic>{
      'organizationalUnit': organizationalUnit,
      'parentOrganizationalUnit': parentOrganizationalUnit,
    };
  }

  factory ADGroupModel.fromDoc(Document doc) {
    return ADGroupModel(
      id: doc.$id,
      organizationalUnit: doc.data['organizationalUnit'] as String,
      parentOrganizationalUnit: doc.data['parentOrganizationalUnit'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory ADGroupModel.fromJson(String source) => ADGroupModel.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'ADGroupModel(id: $id, organizationalUnit: $organizationalUnit, parentOrganizationalUnit: $parentOrganizationalUnit)';

  @override
  bool operator ==(covariant ADGroupModel other) {
    if (identical(this, other)) return true;
  
    return 
      other.id == id &&
      other.organizationalUnit == organizationalUnit &&
      other.parentOrganizationalUnit == parentOrganizationalUnit;
  }

  @override
  int get hashCode => id.hashCode ^ organizationalUnit.hashCode ^ parentOrganizationalUnit.hashCode;
}
