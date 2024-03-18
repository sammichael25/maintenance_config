import 'dart:convert';

import 'package:equatable/equatable.dart';

import 'package:maintenance_config/models/supabase/office_model.dart';

class DepartmentModel extends Equatable {
  final int id;
  final String name;
  final OfficeModel office;

  const DepartmentModel({
    required this.id,
    required this.name,
    required this.office,
  });

  static const DepartmentModel empty = DepartmentModel(id: -1, name: '', office: OfficeModel.empty);

  bool get isEmpty => this == DepartmentModel.empty;

  bool get isNotEmpty => this != DepartmentModel.empty;

  DepartmentModel copyWith({
    int? id,
    String? name,
    OfficeModel? office,
  }) {
    return DepartmentModel(
      id: id ?? this.id,
      name: name ?? this.name,
      office: office ?? this.office,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'office': office.toMap(),
    };
  }

  factory DepartmentModel.fromMap(Map<String, dynamic> map) {
    return DepartmentModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      office: OfficeModel.fromMap(map['office']),
    );
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'name': name,
      'office': office.toMap(),
    };
  }

  factory DepartmentModel.fromDoc(Map<String, dynamic> map) {
    return DepartmentModel(
      id: map['id']?.toInt() ?? 0,
      name: map['name'] ?? '',
      office: OfficeModel.fromDoc(map['office']),
    );
  }

  String toJson() => json.encode(toMap());

  factory DepartmentModel.fromJson(String source) => DepartmentModel.fromMap(json.decode(source));

  @override
  String toString() => '{"id": $id, "name": $name, "office": $office}';

  @override
  List<Object> get props => [id, name, office];
}
