class TokenModel {
  final String access;
  final String refresh;
  TokenModel({required this.access, required this.refresh});

  factory TokenModel.fromJson(data) {
    return TokenModel(access: data['access'], refresh: data['refresh']);
  }

  Map<String, dynamic> toMap() {
    return {'access': access, 'refresh': refresh};
  }
}
