import 'package:ecommerce_app/core/errors/custom_exeption.dart';
import 'package:firebase_auth/firebase_auth.dart';

class FirebaseAuthService {
  Future<User> createEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      final credential = await FirebaseAuth.instance
          .createUserWithEmailAndPassword(email: email, password: password);
      return credential.user!;
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        throw CustomExeption(message: 'The password provided is too weak.');
      } else if (e.code == 'email-already-in-use') {
        throw CustomExeption(
          message: 'The account already exists for that email.',
        );
      } else {
        return throw CustomExeption(
          message: 'An error occured. Please try again.',
        );
      }
    } catch (e) {
      throw CustomExeption(message: 'An error occured. Please try again.');
    }
  }
}
