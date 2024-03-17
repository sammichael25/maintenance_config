import 'dart:convert';

import 'package:equatable/equatable.dart';

class OfficeModel extends Equatable {
  final int id;
  final String office;

  const OfficeModel({
    required this.id,
    required this.office,
  });

  static const OfficeModel empty = OfficeModel(id: -1, office: '');

  bool get isEmpty => this == OfficeModel.empty;

  bool get isNotEmpty => this != OfficeModel.empty;

  OfficeModel copyWith({
    int? id,
    String? office,
  }) {
    return OfficeModel(
      id: id ?? this.id,
      office: office ?? this.office,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'office': office,
    };
  }

  factory OfficeModel.fromMap(Map<String, dynamic> map) {
    return OfficeModel(
      id: map['id']?.toInt() ?? 0,
      office: map['office'] ?? '',
    );
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'office': office,
    };
  }

  factory OfficeModel.fromDoc(Map<String, dynamic> map) {
    return OfficeModel(
      id: map['id']?.toInt() ?? 0,
      office: map['office'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory OfficeModel.fromJson(String source) => OfficeModel.fromMap(json.decode(source));

  @override
  String toString() => '{"id": $id, "office": $office}';

  @override
  List<Object> get props => [id, office];
}
