import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';

class PatchModel extends Equatable {
  final String id;
  final int kBNumber;
  final String description;
  final DateTime installedDateTime;

  PatchModel({
    required this.id,
    required this.kBNumber,
    required this.description,
    required this.installedDateTime,
  });

  @override
  List<Object> get props => [id, kBNumber, description, installedDateTime];

  static PatchModel empty = PatchModel(id: '', kBNumber: 0, description: '', installedDateTime: DateTime.now());

  bool get isEmpty => this == PatchModel.empty;
  bool get isNotEmpty => this != PatchModel.empty;

  PatchModel copyWith({
    String? id,
    int? kBNumber,
    String? title,
    String? description,
    DateTime? installedDateTime,
  }) {
    return PatchModel(
      id: id ?? this.id,
      kBNumber: kBNumber ?? this.kBNumber,
      description: description ?? this.description,
      installedDateTime: installedDateTime ?? this.installedDateTime,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'kBNumber': kBNumber,
      'description': description,
      'installedDateTime': installedDateTime.millisecondsSinceEpoch,
    };
  }

  Map<String, dynamic> toDoc() {
    return {
      '\$id': id,
      'kBNumber': kBNumber,
      'description': description,
      'installedDateTime': installedDateTime.millisecondsSinceEpoch,
    };
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'kBNumber': kBNumber,
      'description': description,
      'installedDateTime': installedDateTime.millisecondsSinceEpoch,
    };
  }

  factory PatchModel.fromMap(Map<String, dynamic> map) {
    return PatchModel(
      id: map['\$id'] ?? '',
      kBNumber: map['kBNumber']?.toInt() ?? 0,
      description: map['description'] ?? '',
      installedDateTime: DateTime.fromMillisecondsSinceEpoch(map['installedDateTime']),
    );
  }

  factory PatchModel.fromDoc(Document doc) {
    return PatchModel(
      id: doc.$id,
      kBNumber: doc.data['kBNumber']?.toInt() ?? 0,
      description: doc.data['description'] ?? '',
      installedDateTime: DateTime.fromMillisecondsSinceEpoch(doc.data['installedDateTime']),
    );
  }

  factory PatchModel.fromPS(Map<String, dynamic> map) {
    return PatchModel(
      id: '',
      kBNumber: map['HotFixID']?.toInt() ?? 0,
      description: map['Description'] ?? '',
      installedDateTime: DateFormat('MM/dd/yyyy hh:mm:ss').parse(map['InstalledOn']),
    );
  }

  String toJson() => json.encode(toMap());

  factory PatchModel.fromJson(String source) => PatchModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'PatchModel(id: $id, kBNumber: $kBNumber, description: $description, installedDateTime: $installedDateTime)';
  }
}
