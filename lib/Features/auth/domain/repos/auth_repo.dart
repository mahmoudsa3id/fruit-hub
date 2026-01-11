import 'package:dartz/dartz.dart';
import 'package:ecommerce_app/Features/auth/domain/entities/user_entiteis.dart';
import 'package:ecommerce_app/core/errors/failure.dart';

abstract class AuthRepo {
  Future<Either<Failure, UserEntiteis>> createEmailAndPassword({
    required String email,
    required String password,
  });
  Future<Either<Failure, UserEntiteis>> loginEmailAndPassword({
    required String email,
    required String password,
  });
}
