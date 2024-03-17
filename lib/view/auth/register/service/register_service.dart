import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/auth/register/model/register_model.dart';
import 'package:traveling_partner/view/auth/register/service/i_register_repository.dart';

class RegisterService extends IRegisterRepository {
  final FirebaseAuth authInstance;
  final FirebaseFirestore firestoreInstance;

  RegisterService(
      {required this.authInstance, required this.firestoreInstance});

  @override
  Future<UserCredential> register(
      {required RegisterModel registerModel}) async {
    final String? name = registerModel.name;
    final String? email = registerModel.email;
    final String? password = registerModel.password;

    if (email != null && password != null && name != null) {
      var user = await authInstance.createUserWithEmailAndPassword(
          email: email, password: password);
      await user.user?.updateDisplayName(name);

      await firestoreInstance
          .collection(DatabaseCollectionEnum.users.name)
          .doc(user.user!.uid)
          .set({
        'userName': name,
        'email': email,
      });
      return user;
    } else {
      throw "email or password is null";
    }
  }
}
