import 'package:equatable/equatable.dart';

class PatchModel extends Equatable {
  final int kBNumber;
  final String title;
  final String description;
  final DateTime installedDateTime;
  
  PatchModel({
    required this.kBNumber,
    required this.title,
    required this.description,
    required this.installedDateTime,
  });

  @override
  List<Object> get props => [kBNumber, title, description, installedDateTime];

  PatchModel copyWith({
    int? kBNumber,
    String? title,
    String? description,
    DateTime? installedDateTime,
  }) {
    return PatchModel(
      kBNumber: kBNumber ?? this.kBNumber,
      title: title ?? this.title,
      description: description ?? this.description,
      installedDateTime: installedDateTime ?? this.installedDateTime,
    );
  }
}
