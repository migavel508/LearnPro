import 'dart:convert';

class GoalModel {
  String goalName; // Name of the goal (e.g., "Limit screen time", "Complete learning activity")
  String goalType; // Type of the goal (e.g., "Screen time", "Learning", "Achievement")
  int targetValue; // Target value for the goal (e.g., 2 hours, 5 tasks, etc.)
  int currentValue; // Current progress toward the goal
  DateTime? deadline; // Optional deadline to achieve the goal
  bool isAchieved; // Whether the goal has been achieved or not

  // Constructor to initialize the GoalModel object
  GoalModel({
    required this.goalName,
    required this.goalType,
    required this.targetValue,
    this.currentValue = 0,
    this.deadline,
    this.isAchieved = false,
  });

  // Factory method for deserialization (converting JSON to GoalModel)
  factory GoalModel.fromJson(Map<String, dynamic> json) {
    return GoalModel(
      goalName: json['goalName'],
      goalType: json['goalType'],
      targetValue: json['targetValue'],
      currentValue: json['currentValue'] ?? 0,
      deadline: json['deadline'] != null ? DateTime.parse(json['deadline']) : null,
      isAchieved: json['isAchieved'] ?? false,
    );
  }

  // Method for serialization (converting GoalModel to JSON)
  Map<String, dynamic> toJson() {
    return {
      'goalName': goalName,
      'goalType': goalType,
      'targetValue': targetValue,
      'currentValue': currentValue,
      'deadline': deadline?.toIso8601String(),
      'isAchieved': isAchieved,
    };
  }

  // Method to convert the GoalModel to a JSON string
  String toJsonString() {
    return jsonEncode(toJson());
  }

  // Method to create a GoalModel object from a JSON string
  static GoalModel fromJsonString(String jsonString) {
    final Map<String, dynamic> json = jsonDecode(jsonString);
    return GoalModel.fromJson(json);
  }

  // Method to update the current progress of the goal
  void updateProgress(int progress) {
    if (!isAchieved) {
      currentValue += progress;
      if (currentValue >= targetValue) {
        currentValue = targetValue; // Ensure progress doesn't exceed the target value
        isAchieved = true;
      }
    }
  }

  // Method to reset the goal's progress
  void resetGoal() {
    currentValue = 0;
    isAchieved = false;
  }

  // Method to check if the goal is within the deadline
  bool isGoalWithinDeadline() {
    if (deadline == null) {
      return true; // No deadline set, so return true
    }
    return DateTime.now().isBefore(deadline!);
  }

  @override
  String toString() {
    return 'GoalModel{goalName: $goalName, goalType: $goalType, targetValue: $targetValue, currentValue: $currentValue, deadline: $deadline, isAchieved: $isAchieved}';
  }
}
