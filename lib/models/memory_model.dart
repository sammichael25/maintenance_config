import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';

class MemoryModel extends Equatable {
  final String id;
  final String manufacture;
  final int configuredClockSpeed;
  final String location;
  final int capacity;
  final String partNumber;
  final String serialNumber;

  const MemoryModel({
    required this.id,
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
      id,
      manufacture,
      configuredClockSpeed,
      location,
      capacity,
      partNumber,
      serialNumber,
    ];
  }

  static const MemoryModel empty =
      MemoryModel(id: '', manufacture: '', configuredClockSpeed: 0, location: '', capacity: 0, partNumber: '', serialNumber: '');

  bool get isEmpty => this == MemoryModel.empty;
  bool get isNotEmpty => this != MemoryModel.empty;

  MemoryModel copyWith({
    String? id,
    String? manufacture,
    int? configuredClockSpeed,
    String? location,
    int? capacity,
    String? partNumber,
    String? serialNumber,
  }) {
    return MemoryModel(
      id: id ?? this.id,
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
      '\$id': id,
      'manufacture': manufacture,
      'configuredClockSpeed': configuredClockSpeed,
      'location': location,
      'capacity': capacity,
      'partNumber': partNumber,
      'serialNumber': serialNumber,
    };
  }

  Map<String, dynamic> toDoc() {
    return {
      '\$id': id,
      'manufacture': manufacture,
      'configuredClockSpeed': configuredClockSpeed,
      'location': location,
      'capacity': capacity,
      'partNumber': partNumber,
      'serialNumber': serialNumber,
    };
  }

  Map<String, dynamic> toNewDoc() {
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
      id: map['\$id'] ?? '',
      manufacture: map['manufacture'] ?? 'N/A',
      configuredClockSpeed: map['configuredClockSpeed']?.toInt() ?? 0,
      location: map['location'] ?? '',
      capacity: map['capacity']?.toInt() ?? 0,
      partNumber: map['partNumber'] ?? 'N/A',
      serialNumber: map['serialNumber'] ?? 'N/A',
    );
  }

  factory MemoryModel.fromDoc(Document doc) {
    return MemoryModel(
      id: doc.$id,
      manufacture: doc.data['manufacture'] ?? 'N/A',
      configuredClockSpeed: doc.data['configuredClockSpeed']?.toInt() ?? 0,
      location: doc.data['location'] ?? '',
      capacity: doc.data['capacity']?.toInt() ?? 0,
      partNumber: doc.data['partNumber'] ?? 'N/A',
      serialNumber: doc.data['serialNumber'] ?? 'N/A',
    );
  }

  factory MemoryModel.fromPS(Map<String, dynamic> map) {
    return MemoryModel(
      id: '',
      manufacture: map['MemoryManufacturer'] ?? 'N/A',
      configuredClockSpeed: map['MemoryConfiguredclockspeed']?.toInt() ?? 0,
      location: map['MemoryLocation'] ?? '',
      capacity: map['MemoryCapacity']?.toInt() ?? 0,
      partNumber: map['MemoryPartNumber'] ?? 'N/A',
      serialNumber: map['MemorySerialnumber'] ?? 'N/A',
    );
  }

  String toJson() => json.encode(toMap());

  factory MemoryModel.fromJson(String source) => MemoryModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'MemoryModel(id: $id, manufacture: $manufacture, configuredClockSpeed: $configuredClockSpeed, location: $location, capacity: $capacity, partNumber: $partNumber, serialNumber: $serialNumber)';
  }
}
