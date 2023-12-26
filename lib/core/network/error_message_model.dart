import 'dart:convert';

class ErrorMessageModel {
  bool? success;
  int? statusCode;
  String? statusMessage;

  ErrorMessageModel({
    this.success,
    this.statusCode,
    this.statusMessage,
  });

  ErrorMessageModel copyWith({
    bool? success,
    int? statusCode,
    String? statusMessage,
  }) =>
      ErrorMessageModel(
        success: success ?? this.success,
        statusCode: statusCode ?? this.statusCode,
        statusMessage: statusMessage ?? this.statusMessage,
      );

  factory ErrorMessageModel.fromJson(String str) => ErrorMessageModel.fromMap(json.decode(str));

  String toJson() => json.encode(toMap());

  factory ErrorMessageModel.fromMap(Map<String, dynamic> json) => ErrorMessageModel(
    success: json["success"],
    statusCode: json["status_code"],
    statusMessage: json["status_message"],
  );

  Map<String, dynamic> toMap() => {
    "success": success,
    "status_code": statusCode,
    "status_message": statusMessage,
  };
}
