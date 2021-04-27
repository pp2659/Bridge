import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

class Auth with ChangeNotifier {
  final FirebaseAuth firebaseAuth;
  Stream<User> get authState => firebaseAuth.idTokenChanges();
  Auth(this.firebaseAuth);

  Future<String> signUp(String email, String password) async {
    try {
      await firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed up!";
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }

   Future<String> signIn({String email, String password}) async {
    try {
      await firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in!";
    } on FirebaseAuthException catch (e) {
      return e.message.toString();
    }
  }
}
