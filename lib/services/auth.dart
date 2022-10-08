import 'package:firebase_auth/firebase_auth.dart';
import 'package:mad_project/database/user_database.dart';

class AuthService {
  FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Stream<User> get authChange {
    return _firebaseAuth.authStateChanges();
  }

  Future signOut() async {
    try {
      await _firebaseAuth.signOut();
    } catch (e) {
      print(e);
    }
  }

  Future deleteUser() async {
    try {
      User user = _firebaseAuth.currentUser;
      String uid = user.uid;
      await UserDatabase(uid: uid).deleteUser();
      await _firebaseAuth.signOut();
      return true;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
}
