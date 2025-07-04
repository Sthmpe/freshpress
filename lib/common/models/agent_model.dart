class AgentModel {
  final String id;
  final String name;
  final String location;
  final double charge;
  final double ranking;
  final String profileImage;
  final String businessName; // ✅ new field

  AgentModel({
    required this.id,
    required this.name,
    required this.location,
    required this.charge,
    required this.ranking,
    required this.profileImage,
    required this.businessName, // ✅ add here too
  });

  factory AgentModel.fromMap(Map<String, dynamic> map) {
    return AgentModel(
      id: map['id'],
      name: map['name'],
      location: map['location'],
      charge: (map['charge'] as num).toDouble(),
      ranking: (map['ranking'] as num).toDouble(),
      profileImage: map['profileImage'],
      businessName: map['businessName'], // ✅ add this
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'location': location,
      'charge': charge,
      'ranking': ranking,
      'profileImage': profileImage,
      'businessName': businessName, // ✅ add this
    };
  }
}
