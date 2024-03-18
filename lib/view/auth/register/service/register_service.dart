import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:traveling_partner/core/components/exception/custom_exception.dart';
import 'package:traveling_partner/product/database-collections/database_collection_enum.dart';
import 'package:traveling_partner/view/auth/register/model/register_model.dart';
import 'package:traveling_partner/view/auth/register/service/i_register_repository.dart';

/// A service class responsible for user registration.
class RegisterService extends IRegisterRepository {
  /// A service class responsible for user registration.
  RegisterService({
    required this.authInstance,
    required this.firestoreInstance,
  });

  /// The instance of [FirebaseAuth] for user authentication.
  final FirebaseAuth authInstance;

  /// The instance of [FirebaseFirestore] for Firestore database operations.
  final FirebaseFirestore firestoreInstance;

  @override
  Future<UserCredential> register({
    required RegisterModel registerModel,
  }) async {
    final name = registerModel.name;
    final email = registerModel.email;
    final password = registerModel.password;

    if (email != null && password != null && name != null) {
      final user = await authInstance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
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
      throw CustomException();
    }
  }
}
