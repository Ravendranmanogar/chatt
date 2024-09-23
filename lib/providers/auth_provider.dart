import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:provider/provider.dart';

enum AuthStatus{
  NotAuthenticated,
  Authenticated,
  Authenticating,
  UserNotFound,
  Error,
}

class AuthProvider extends ChangeNotifier{
  AuthStatus status;
  FirebaseAuth _auth;

  static AuthProvider instance = AuthProvider();

  AuthProvider(){
    _auth = FirebaseAuth.instance;
  }

  void loginUserWithEmailAndPassword(String _email,String _password)async {
    status=AuthStatus.Authenticating;
    notifyListeners();
    try{
      AuthResult _result = await _auth.signInWithEmailAndPassword(email: _email, password: _password);
      var user = _result.user;
      status=AuthStatus.Authenticated;
      print("Logged In SuccessFully");
    }catch(e){
      status=AuthStatus.Error;
    }
    notifyListeners();
  }
}