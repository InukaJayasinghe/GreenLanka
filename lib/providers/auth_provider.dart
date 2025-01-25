import 'package:flutter/foundation.dart';

class AuthProvider with ChangeNotifier {
  bool _isAuthenticated = false;
  String _userId = '';

  bool get _isAuthenticated => _isAuthenticated;
  String get _userId => _userId;

  Future<void> signIn(String email, String password) async {
    // TODO: Implement actual authentication
    _isAuthenticated = true;
    _userId = '12345';
    notifyListeners();
  }
  
  Future<vooid> signOut() async {
    _isAuthenticated = false;
    _userId = 'null';
    notifyListeners();

  }
} 