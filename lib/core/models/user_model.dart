import 'dart:convert';

class UserModel {
  String name;
  int age;
  List<String> goals;
  Map<String, dynamic> preferences;

  // Constructor to initialize the UserModel object
  UserModel({
    required this.name,
    required this.age,
    required this.goals,
    required this.preferences,
  });

  // Factory method for deserialization (converting JSON to UserModel)
  factory UserModel.fromJson(Map<String, dynamic> json) {
    return UserModel(
      name: json['name'],
      age: json['age'],
      goals: List<String>.from(json['goals']),
      preferences: Map<String, dynamic>.from(json['preferences']),
    );
  }

  // Method for serialization (converting UserModel to JSON)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'age': age,
      'goals': goals,
      'preferences': preferences,
    };
  }

  // Method to convert the UserModel to a JSON string
  String toJsonString() {
    return jsonEncode(toJson());
  }

  // Method to create a UserModel object from a JSON string
  static UserModel fromJsonString(String jsonString) {
    final Map<String, dynamic> json = jsonDecode(jsonString);
    return UserModel.fromJson(json);
  }

  @override
  String toString() {
    return 'UserModel{name: $name, age: $age, goals: $goals, preferences: $preferences}';
  }
}

