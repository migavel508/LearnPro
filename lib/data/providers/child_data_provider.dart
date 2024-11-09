import 'package:flutter/foundation.dart';

class ChildDataProvider with ChangeNotifier {
  Map<String, dynamic> _childProfile = {};
  int _screenTime = 0; // Screen time in minutes
  List<String> _activities = [];

  Map<String, dynamic> get childProfile => _childProfile;
  int get screenTime => _screenTime;
  List<String> get activities => _activities;

  // Update child profile
  void updateChildProfile(Map<String, dynamic> profileData) {
    _childProfile = profileData;
    notifyListeners();
  }

  // Update screen time
  void updateScreenTime(int minutes) {
    _screenTime = minutes;
    notifyListeners();
  }

  // Add an activity
  void addActivity(String activity) {
    _activities.add(activity);
    notifyListeners();
  }

  // Clear all activities
  void clearActivities() {
    _activities.clear();
    notifyListeners();
  }

  // Reset screen time
  void resetScreenTime() {
    _screenTime = 0;
    notifyListeners();
  }
}
