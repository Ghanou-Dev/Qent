class UserModel {
  final int id;
  final String fullName;
  final String email;

  const UserModel({
    required this.id,
    required this.fullName,
    required this.email,
  });

  factory UserModel.fromJson(data) {
    return UserModel(
      id: data['id'],
      fullName: data['full_name'],
      email: data['email'],
    );
  }

  Map<String, dynamic> toMap() {
    return {'id': id, 'full_name': fullName, 'email': email};
  }
}
