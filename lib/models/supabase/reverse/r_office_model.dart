import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/supabase/reverse/r_department_model.dart';


class ROfficeModel extends Equatable {
  final int id;
  final String office;
  final List<RDepartmentModel> departments;

  const ROfficeModel({
    required this.id,
    required this.office,
    required this.departments,
  });

  static const ROfficeModel empty = ROfficeModel(id: -1, office: '', departments: []);

  bool get isEmpty => this == ROfficeModel.empty;

  bool get isNotEmpty => this != ROfficeModel.empty;

  ROfficeModel copyWith({
    int? id,
    String? office,
    List<RDepartmentModel>? departments,
  }) {
    return ROfficeModel(
      id: id ?? this.id,
      office: office ?? this.office,
      departments: departments ?? this.departments,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'office': office,
      'departments': departments.map((x) => x.toMap()).toList(),
    };
  }

  factory ROfficeModel.fromMap(Map<String, dynamic> map) {
    return ROfficeModel(
      id: map['id']?.toInt() ?? 0,
      office: map['office'] ?? '',
      departments: List<RDepartmentModel>.from(map['departments']?.map((x) => RDepartmentModel.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory ROfficeModel.fromJson(String source) => ROfficeModel.fromMap(json.decode(source));

  @override
  String toString() => 'RCustomsOfficeModel(id: $id, office: $office)';

  @override
  List<Object?> get props => [id, office, departments];
}
