import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/basic_types.dart';

class DiskModel extends Equatable {
  final String id;
  final int driveType;
  final String letter;
  final double freeSpace;
  final double size;
  final String? name;

  const DiskModel({
    required this.id,
    required this.driveType,
    required this.letter,
    required this.freeSpace,
    required this.size,
    this.name,
  });

  @override
  List<Object?> get props {
    return [
      id,
      driveType,
      letter,
      freeSpace,
      size,
      name,
    ];
  }

  static const DiskModel empty = DiskModel(id: '', driveType: -1, letter: '', freeSpace: 0, size: 0, name: '');

  bool get isEmpty => this == DiskModel.empty;
  bool get isNotEmpty => this != DiskModel.empty;

  DiskModel copyWith({
    String? id,
    int? driveType,
    String? letter,
    double? freeSpace,
    double? size,
    ValueGetter<String?>? name,
  }) {
    return DiskModel(
      id: id ?? this.id,
      driveType: driveType ?? this.driveType,
      letter: letter ?? this.letter,
      freeSpace: freeSpace ?? this.freeSpace,
      size: size ?? this.size,
      name: name != null ? name() : this.name,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'driveType': driveType,
      'letter': letter,
      'freeSpace': freeSpace,
      'size': size,
      'name': name,
    };
  }

  Map<String, dynamic> toDoc() {
    return {
      '\$id': id,
      'driveType': driveType,
      'letter': letter,
      'freeSpace': freeSpace,
      'size': size,
      'name': name,
    };
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'driveType': driveType,
      'letter': letter,
      'freeSpace': freeSpace,
      'size': size,
      'name': name,
    };
  }

  factory DiskModel.fromMap(Map<String, dynamic> map) {
    return DiskModel(
      id: map['\$id'] ?? '',
      driveType: map['driveType']?.toInt() ?? 0,
      letter: map['letter'] ?? '',
      freeSpace: map['freeSpace']?.toDouble() ?? 0,
      size: map['size']?.toDouble() ?? 0,
      name: map['name'],
    );
  }

  factory DiskModel.fromDoc(Document doc) {
    return DiskModel(
      id: doc.data['id'] ?? '',
      driveType: doc.data['driveType']?.toInt() ?? 0,
      letter: doc.data['letter'] ?? '',
      freeSpace: doc.data['freeSpace']?.toDouble() ?? 0,
      size: doc.data['size']?.toDouble() ?? 0,
      name: doc.data['name'],
    );
  }

  factory DiskModel.fromPS(Map<String, dynamic> map) {
    return DiskModel(
      id: '',
      driveType: map['DriveType']?.toInt() ?? 0,
      letter: map['Disks'] ?? '',
      freeSpace: map['FreeDiskSpace']?.toDouble() ?? 0,
      size: map['DisksSize']?.toDouble() ?? 0,
      name: map['Name'],
    );
  }

  String toJson() => json.encode(toMap());

  factory DiskModel.fromJson(String source) => DiskModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'DiskModel(id: $id, driveType: $driveType, letter: $letter, freeSpace: $freeSpace, size: $size, name: $name)';
  }
}
