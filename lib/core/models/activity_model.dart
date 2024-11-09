import 'dart:convert';

class ActivityModel {
  String name;
  String type; // e.g., 'Physical', 'Mental', 'Creative', etc.
  int suggestedAge; // Age range for suggested participants
  bool isCompleted; // Status of activity completion
  Duration duration; // Duration of the activity (e.g., 30 minutes)
  
  // Constructor to initialize the ActivityModel object
  ActivityModel({
    required this.name,
    required this.type,
    required this.suggestedAge,
    this.isCompleted = false,
    required this.duration,
  });

  // Factory method for deserialization (converting JSON to ActivityModel)
  factory ActivityModel.fromJson(Map<String, dynamic> json) {
    return ActivityModel(
      name: json['name'],
      type: json['type'],
      suggestedAge: json['suggestedAge'],
      isCompleted: json['isCompleted'] ?? false,
      duration: Duration(minutes: json['durationMinutes']),
    );
  }

  // Method for serialization (converting ActivityModel to JSON)
  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'type': type,
      'suggestedAge': suggestedAge,
      'isCompleted': isCompleted,
      'durationMinutes': duration.inMinutes,
    };
  }

  // Method to convert the ActivityModel to a JSON string
  String toJsonString() {
    return jsonEncode(toJson());
  }

  // Method to create an ActivityModel object from a JSON string
  static ActivityModel fromJsonString(String jsonString) {
    final Map<String, dynamic> json = jsonDecode(jsonString);
    return ActivityModel.fromJson(json);
  }

  @override
  String toString() {
    return 'ActivityModel{name: $name, type: $type, suggestedAge: $suggestedAge, isCompleted: $isCompleted, duration: ${duration.inMinutes} minutes}';
  }
}

