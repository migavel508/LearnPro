import 'package:flutter/foundation.dart';

class SettingsProvider with ChangeNotifier {
  String _language = 'en'; // Default language is English
  bool _isDarkMode = false; // Default theme is light
  bool _parentalControlsEnabled = false; // Default to disabled

  String get language => _language;
  bool get isDarkMode => _isDarkMode;
  bool get parentalControlsEnabled => _parentalControlsEnabled;

  // Update the app language
  void updateLanguage(String newLanguage) {
    _language = newLanguage;
    notifyListeners();
  }

  // Toggle the dark mode theme
  void toggleDarkMode() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }

  // Enable or disable parental controls
  void toggleParentalControls() {
    _parentalControlsEnabled = !_parentalControlsEnabled;
    notifyListeners();
  }

  // Save settings to local storage (optional)
  Future<void> saveSettings() async {
    // You can save settings to local storage if required (e.g., using SharedPreferences)
    // Example: 
    // await prefs.setString('language', _language);
    // await prefs.setBool('isDarkMode', _isDarkMode);
    // await prefs.setBool('parentalControlsEnabled', _parentalControlsEnabled);
  }

  // Load settings from local storage (optional)
  Future<void> loadSettings() async {
    // Load settings from local storage if required
    // Example:
    // _language = prefs.getString('language') ?? 'en';
    // _isDarkMode = prefs.getBool('isDarkMode') ?? false;
    // _parentalControlsEnabled = prefs.getBool('parentalControlsEnabled') ?? false;
    // notifyListeners();
  }
}
