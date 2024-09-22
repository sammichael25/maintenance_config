import 'dart:convert';
import 'package:equatable/equatable.dart';
import 'package:maintenance_config/models/basic_types.dart';

class BaseErrorModel extends Equatable {
  final String title;
  final String displayMessage;
  final String? errorMessage;
  final String? stacktrace;

  BaseErrorModel({
    required this.title,
    required this.displayMessage,
    this.errorMessage,
    this.stacktrace,
  });

  @override
  List<Object?> get props => [title, displayMessage, errorMessage, stacktrace];

  

  BaseErrorModel copyWith({
    String? title,
    String? displayMessage,
    ValueGetter<String?>? errorMessage,
    ValueGetter<String?>? stacktrace,
  }) {
    return BaseErrorModel(
      title: title ?? this.title,
      displayMessage: displayMessage ?? this.displayMessage,
      errorMessage: errorMessage != null ? errorMessage() : this.errorMessage,
      stacktrace: stacktrace != null ? stacktrace() : this.stacktrace,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'title': title,
      'displayMessage': displayMessage,
      'errorMessage': errorMessage,
      'stacktrace': stacktrace,
    };
  }

  factory BaseErrorModel.fromMap(Map<String, dynamic> map) {
    return BaseErrorModel(
      title: map['title'] ?? '',
      displayMessage: map['displayMessage'] ?? '',
      errorMessage: map['errorMessage'],
      stacktrace: map['stacktrace'],
    );
  }

  String toJson() => json.encode(toMap());

  factory BaseErrorModel.fromJson(String source) => BaseErrorModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'BaseErrorModel(title: $title, displayMessage: $displayMessage, errorMessage: $errorMessage, stacktrace: $stacktrace)';
  }
}
