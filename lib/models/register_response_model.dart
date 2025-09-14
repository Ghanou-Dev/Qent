import 'package:qent/models/token_model.dart';
import 'package:qent/models/user_model.dart';

class RegisterResponseModel {
  final bool success;
  final UserModel? user;
  final String? message;
  final TokenModel? tokens;
  final String? errors;
  RegisterResponseModel({
    required this.success,
    this.user,
    this.message,
    this.tokens,
    this.errors,
  });

  factory RegisterResponseModel.fromJson(jsonData) {
    if (jsonData is Map<String, dynamic>) {
      return RegisterResponseModel(
        success: true,
        user: UserModel.fromJson(jsonData['user']) ,
        message: jsonData['message'],
        tokens: TokenModel.fromJson(jsonData['tokens']),
      );
    } else if (jsonData is List<String>) {
      return RegisterResponseModel(success: false, errors: jsonData[0]);
    } else {
      throw Exception('Invalid responce');
    }
  }

  Map<String, dynamic> toMap() {
    return {'user': user, 'message': message, 'token': tokens};
  }
}
