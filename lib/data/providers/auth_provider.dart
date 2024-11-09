import 'package:flutter/foundation.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthProvider with ChangeNotifier {
  final FlutterSecureStorage _storage = FlutterSecureStorage();
  String? _userToken;

  String? get userToken => _userToken;

  // Function to log in and store the user token
  Future<void> login(String username, String password) async {
    // Call your API for authentication here
    // For example:
    // final response = await api.login(username, password);
    // if (response.success) {
    //   _userToken = response.token;
    //   await _storage.write(key: 'token', value: _userToken);
    //   notifyListeners();
    // }

    // For demonstration purposes, assume successful login:
    _userToken = 'dummyToken';
    await _storage.write(key: 'token', value: _userToken);
    notifyListeners();
  }

  // Function to log out and remove the user token
  Future<void> logout() async {
    _userToken = null;
    await _storage.delete(key: 'token');
    notifyListeners();
  }

  // Function to check if the user is logged in
  Future<bool> checkLoginStatus() async {
    _userToken = await _storage.read(key: 'token');
    return _userToken != null;
  }

  // Function to retrieve user profile data
  Future<Map<String, dynamic>> getUserProfile() async {
    // You can call an API to get the user's profile
    // For example:
    // final profile = await api.getUserProfile();
    // return profile;

    // For demonstration purposes, return dummy data:
    return {'name': 'John Doe', 'email': 'johndoe@example.com'};
  }
}
