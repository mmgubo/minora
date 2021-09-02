import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  
  Future loginWithEmail({@required String email, @required String password}) {
    // TODO: implement loginWithEmail
    return null;
  }

  Future signUpWithEmail({@required String email, @required String password}) {
    // TODO: implement signUpWithEmail
    return null;
  }
}