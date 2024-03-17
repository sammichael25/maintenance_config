// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class AppwriteFunctionResponse {
  bool success;
  String message;
  
  AppwriteFunctionResponse({
    required this.success,
    required this.message,
  });

  AppwriteFunctionResponse copyWith({
    bool? success,
    String? message,
  }) {
    return AppwriteFunctionResponse(
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

  factory AppwriteFunctionResponse.fromMap(Map<String, dynamic> map) {
    return AppwriteFunctionResponse(
      success: map['success'] as bool,
      message: map['message'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory AppwriteFunctionResponse.fromJson(String source) => AppwriteFunctionResponse.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() => 'AppwriteFunctionResponse(success: $success, message: $message)';

  @override
  bool operator ==(covariant AppwriteFunctionResponse other) {
    if (identical(this, other)) return true;
  
    return 
      other.success == success &&
      other.message == message;
  }

  @override
  int get hashCode => success.hashCode ^ message.hashCode;
}
