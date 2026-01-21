import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/Features/auth/data/model/user_model.dart';
import 'package:ecommerce_app/Features/auth/domain/entities/user_entiteis.dart';
import 'package:ecommerce_app/Features/auth/domain/repos/auth_repo.dart';
import 'package:ecommerce_app/core/errors/custom_exeption.dart';
import 'package:ecommerce_app/core/errors/failure.dart';
import 'package:ecommerce_app/core/services/firebase_auth_service.dart';

class AuthReposImpl extends AuthRepo {
  final FirebaseAuthService firebaseAuthService;

  AuthReposImpl({required this.firebaseAuthService});
  @override
  Future<Either<Failure, UserEntiteis>> createEmailAndPassword({
    required String email,
    required String password,
  }) async {
    try {
      var user = await firebaseAuthService.createEmailAndPassword(
        email: email,
        password: password,
      );
      return right(UserModel.fromFireBaseUser(user));
    } on CustomExeption catch (e) {
      return left(ServerFailure(e.message));
    } catch (e) {
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, UserEntiteis>> loginEmailAndPassword({
    required String email,
    required String password,
  }) {
    throw UnimplementedError();
  }
}
