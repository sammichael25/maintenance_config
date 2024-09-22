import 'dart:convert';

import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/basic_types.dart';

class BaseErrorModel extends Equatable {
  final String title;
  final String message;
  final String? stacktrace;

  const BaseErrorModel({
    required this.title,
    required this.message,
    this.stacktrace,
  });

  @override
  List<Object?> get props => [title, message, stacktrace];

  BaseErrorModel copyWith({
    String? title,
    String? message,
    ValueGetter<String?>? stacktrace,
  }) {
    return BaseErrorModel(
      title: title ?? this.title,
      message: message ?? this.message,
      stacktrace: stacktrace != null ? stacktrace() : this.stacktrace,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'message': message,
      'stacktrace': stacktrace,
    };
  }

  factory BaseErrorModel.fromMap(Map<String, dynamic> map) {
    return BaseErrorModel(
      title: map['title'] ?? '',
      message: map['message'] ?? '',
      stacktrace: map['stacktrace'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseErrorModel.fromJson(String source) => BaseErrorModel.fromMap(json.decode(source));

  @override
  String toString() => 'BaseErrorModel(title: $title, message: $message, stacktrace: $stacktrace)';
}
