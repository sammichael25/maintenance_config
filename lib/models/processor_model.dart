import 'package:equatable/equatable.dart';

class ProcessorModel extends Equatable {
  final int id;
  final String processor;
  final int numberOfLogicalProcessors;
  final int numberOfCores;
  final String processorId;
  final String processorManufacturer;
  final String processorMaxClockSpeed;
  
  ProcessorModel({
    required this.id,
    required this.processor,
    required this.numberOfLogicalProcessors,
    required this.numberOfCores,
    required this.processorId,
    required this.processorManufacturer,
    required this.processorMaxClockSpeed,
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
    ];
  }

  ProcessorModel copyWith({
    int? id,
    String? processor,
    int? numberOfLogicalProcessors,
    int? numberOfCores,
    String? processorId,
    String? processorManufacturer,
    String? processorMaxClockSpeed,
  }) {
    return ProcessorModel(
      id: id ?? this.id,
      processor: processor ?? this.processor,
      numberOfLogicalProcessors: numberOfLogicalProcessors ?? this.numberOfLogicalProcessors,
      numberOfCores: numberOfCores ?? this.numberOfCores,
      processorId: processorId ?? this.processorId,
      processorManufacturer: processorManufacturer ?? this.processorManufacturer,
      processorMaxClockSpeed: processorMaxClockSpeed ?? this.processorMaxClockSpeed,
    );
  }
}
