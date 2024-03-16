import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<void> resetPassword(String email) async {
    var user = await _auth.sendPasswordResetEmail(email: email);
    return user;
  }

  Future<User?> signIn(String email, String password) async {
    var user = await _auth.signInWithEmailAndPassword(
        email: email, password: password);
    return user.user;
  }

  Future<void> signOut() async {
    return _auth.signOut();
  }

  User? issignin() {
    return _auth.currentUser;
  }

  String? infouser() {
    return _auth.currentUser?.uid;
  }

  String? name() {
    return _auth.currentUser?.email;
  }

  Future<DocumentSnapshot<Map<String, dynamic>>> username() {
    return _firestore.collection('Person').doc(infouser()).get();
  }

  Future<QuerySnapshot<Map<String, dynamic>>> derslerimiGoster() async {
    return await _firestore
        .collection('Person')
        .doc(infouser())
        .collection('alinacakdersler')
        .get();
  }

  Future<User?> createPerson(String name, String email, String password) async {
    print("bu kisim calisti");
    print(_auth);
    print(_auth.currentUser);

    var user = await _auth.createUserWithEmailAndPassword(
        email: email, password: password);

    // await _firestore.collection("Person").doc(user.user!.uid).set({
    //   'userName': name,
    //   'email': email,
    //   "password": password,
    // });

    return user.user;
  }
}
