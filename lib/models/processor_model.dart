import 'dart:convert';

import 'package:dart_appwrite/models.dart';
import 'package:equatable/equatable.dart';

class ProcessorModel extends Equatable {
  final String id;
  final String processor;
  final int numberOfLogicalProcessors;
  final int numberOfCores;
  final String processorId;
  final String processorManufacturer;
  final int processorMaxClockSpeed;
  final int currentUsage;
  
  const ProcessorModel({
    required this.id,
    required this.processor,
    required this.numberOfLogicalProcessors,
    required this.numberOfCores,
    required this.processorId,
    required this.processorManufacturer,
    required this.processorMaxClockSpeed,
    this.currentUsage = 0,
  });

  @override
  List<Object> get props {
    return [
      id,
      processor,
      numberOfLogicalProcessors,
      numberOfCores,
      processorId,
      processorManufacturer,
      processorMaxClockSpeed,
      currentUsage,
    ];
  }

  static const ProcessorModel empty = ProcessorModel(id: '', processor: '', numberOfLogicalProcessors: 0, numberOfCores: 0, processorId: '', processorManufacturer: '', processorMaxClockSpeed: 0, currentUsage: 0);

  bool get isEmpty => this == ProcessorModel.empty;
  bool get isNotEmpty => this != ProcessorModel.empty;

  ProcessorModel copyWith({
    String? id,
    String? processor,
    int? numberOfLogicalProcessors,
    int? numberOfCores,
    String? processorId,
    String? processorManufacturer,
    int? processorMaxClockSpeed,
    int? currentUsage,
  }) {
    return ProcessorModel(
      id: id ?? this.id,
      processor: processor ?? this.processor,
      numberOfLogicalProcessors: numberOfLogicalProcessors ?? this.numberOfLogicalProcessors,
      numberOfCores: numberOfCores ?? this.numberOfCores,
      processorId: processorId ?? this.processorId,
      processorManufacturer: processorManufacturer ?? this.processorManufacturer,
      processorMaxClockSpeed: processorMaxClockSpeed ?? this.processorMaxClockSpeed,
      currentUsage: currentUsage ?? this.currentUsage,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      '\$id': id,
      'processor': processor,
      'numberOfLogicalProcessors': numberOfLogicalProcessors,
      'numberOfCores': numberOfCores,
      'processorId': processorId,
      'processorManufacturer': processorManufacturer,
      'processorMaxClockSpeed': processorMaxClockSpeed,
      'currentUsage': currentUsage,
    };
  }

  Map<String, dynamic> toDoc() {
    return {
      '\$id': id,
      'processor': processor,
      'numberOfLogicalProcessors': numberOfLogicalProcessors,
      'numberOfCores': numberOfCores,
      'processorId': processorId,
      'processorManufacturer': processorManufacturer,
      'processorMaxClockSpeed': processorMaxClockSpeed,
      'currentUsage': currentUsage,
    };
  }

  Map<String, dynamic> toNewDoc() {
    return {
      'processor': processor,
      'numberOfLogicalProcessors': numberOfLogicalProcessors,
      'numberOfCores': numberOfCores,
      'processorId': processorId,
      'processorManufacturer': processorManufacturer,
      'processorMaxClockSpeed': processorMaxClockSpeed,
      'currentUsage': currentUsage,
    };
  }

  factory ProcessorModel.fromMap(Map<String, dynamic> map) {
    return ProcessorModel(
      id: map['\$id'] ?? '',
      processor: map['processor'] ?? '',
      numberOfLogicalProcessors: map['numberOfLogicalProcessors']?.toInt() ?? 0,
      numberOfCores: map['numberOfCores']?.toInt() ?? 0,
      processorId: map['processorId'] ?? '',
      processorManufacturer: map['processorManufacturer'] ?? '',
      processorMaxClockSpeed: map['processorMaxClockSpeed']?.toInt() ?? 0,
      currentUsage: map['currentUsage']?.toInt() ?? 0,
    );
  }

  factory ProcessorModel.fromDoc(Document doc) {
    return ProcessorModel(
      id: doc.$id,
      processor: doc.data['processor'] ?? '',
      numberOfLogicalProcessors: doc.data['numberOfLogicalProcessors']?.toInt() ?? 0,
      numberOfCores: doc.data['numberOfCores']?.toInt() ?? 0,
      processorId: doc.data['processorId'] ?? '',
      processorManufacturer: doc.data['processorManufacturer'] ?? '',
      processorMaxClockSpeed: doc.data['processorMaxClockSpeed']?.toInt() ?? 0,
      currentUsage: doc.data['currentUsage']?.toInt() ?? 0,
    );
  }

  factory ProcessorModel.fromPS(Map<String, dynamic> map) {
    return ProcessorModel(
      id: '',
      processor: map['Processor'] ?? '',
      numberOfLogicalProcessors: map['NumberOfLogicalProcessors']?.toInt() ?? 0,
      numberOfCores: map['NumberOfCores']?.toInt() ?? 0,
      processorId: map['ProcessorId'] ?? '',
      processorManufacturer: map['ProcessorManufacturer'] ?? '',
      processorMaxClockSpeed: map['ProcessorMaxClockSpeed']?.toInt() ?? 0,
      currentUsage: 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory ProcessorModel.fromJson(String source) => ProcessorModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'ProcessorModel(id: $id, processor: $processor, numberOfLogicalProcessors: $numberOfLogicalProcessors, numberOfCores: $numberOfCores, processorId: $processorId, processorManufacturer: $processorManufacturer, processorMaxClockSpeed: $processorMaxClockSpeed, currentUsage: $currentUsage)';
  }
}
