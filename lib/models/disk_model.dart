import 'package:equatable/equatable.dart';

class DiskModel extends Equatable {
  final int driveType;
  final String letter;
  final String freeSpace;
  final String size;
  final String? name;

  DiskModel({
    required this.driveType,
    required this.letter,
    required this.freeSpace,
    required this.size,
    this.name,
  });

  @override
  List<Object?> get props {
    return [
      driveType,
      letter,
      freeSpace,
      size,
      name,
    ];
  }

  DiskModel copyWith({
    int? driveType,
    String? letter,
    String? freeSpace,
    String? size,
    String? name,
  }) {
    return DiskModel(
      driveType: driveType ?? this.driveType,
      letter: letter ?? this.letter,
      freeSpace: freeSpace ?? this.freeSpace,
      size: size ?? this.size,
      name: name ?? this.name,
    );
  }
}
