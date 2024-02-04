import 'dart:convert';

import 'package:equatable/equatable.dart';

class MemoryModel extends Equatable {
  final String manufacture;
  final int configuredClockSpeed;
  final String location;
  final int capacity;
  final String partNumber;
  final String serialNumber;
  
  MemoryModel({
    required this.manufacture,
    required this.configuredClockSpeed,
    required this.location,
    required this.capacity,
    required this.partNumber,
    required this.serialNumber,
  });

  @override
  List<Object> get props {
    return [
      manufacture,
      configuredClockSpeed,
      location,
      capacity,
      partNumber,
      serialNumber,
    ];
  }

  MemoryModel copyWith({
    String? manufacture,
    int? configuredClockSpeed,
    String? location,
    int? capacity,
    String? partNumber,
    String? serialNumber,
  }) {
    return MemoryModel(
      manufacture: manufacture ?? this.manufacture,
      configuredClockSpeed: configuredClockSpeed ?? this.configuredClockSpeed,
      location: location ?? this.location,
      capacity: capacity ?? this.capacity,
      partNumber: partNumber ?? this.partNumber,
      serialNumber: serialNumber ?? this.serialNumber,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'manufacture': manufacture,
      'configuredClockSpeed': configuredClockSpeed,
      'location': location,
      'capacity': capacity,
      'partNumber': partNumber,
      'serialNumber': serialNumber,
    };
  }

  factory MemoryModel.fromMap(Map<String, dynamic> map) {
    return MemoryModel(
      manufacture: map['manufacture'] ?? 'N/A',
      configuredClockSpeed: map['configuredClockSpeed']?.toInt() ?? 0,
      location: map['location'] ?? '',
      capacity: map['capacity']?.toInt() ?? 0,
      partNumber: map['partNumber'] ?? 'N/A',
      serialNumber: map['serialNumber'] ?? 'N/A',
    );
  }

  String toJson() => json.encode(toMap());

  factory MemoryModel.fromJson(String source) => MemoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MemoryModel(manufacture: $manufacture, configuredClockSpeed: $configuredClockSpeed, location: $location, capacity: $capacity, partNumber: $partNumber, serialNumber: $serialNumber)';
  }
}
