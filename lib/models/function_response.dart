// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class FunctionResponse {
  bool success;
  String message;
  
  FunctionResponse({
    required this.success,
    required this.message,
  });

  FunctionResponse copyWith({
    bool? success,
    String? message,
  }) {
    return FunctionResponse(
      success: success ?? this.success,
      message: message ?? this.message,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'success': success,
      'message': message,
    };
  }

  factory FunctionResponse.fromMap(Map<String, dynamic> map) {
    return FunctionResponse(
      success: map['success'] as bool,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FunctionResponse.fromJson(String source) => FunctionResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'FunctionResponse(success: $success, message: $message)';

  @override
  bool operator ==(covariant FunctionResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.success == success &&
      other.message == message;
  }

  @override
  int get hashCode => success.hashCode ^ message.hashCode;
}
