class Country {
  final String dialCode;
  final String name;
  final String flag;
  const Country({
    required this.dialCode,
    required this.name,
    required this.flag,
  });

  factory Country.fromJson(jsonData) {
    return Country(
      dialCode: jsonData['dialCode'],
      name: jsonData['name'],
      flag: jsonData['flag'],
    );
  }
  Map<String, dynamic> toMap() {
    return {'dialCode': dialCode, 'name': name, 'flag': flag};
  }
}
