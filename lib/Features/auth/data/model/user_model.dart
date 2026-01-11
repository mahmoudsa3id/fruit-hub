import 'package:ecommerce_app/Features/auth/domain/entities/user_entiteis.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserModel extends UserEntiteis {
  UserModel({
    required super.email,
    required super.password,
    required super.uId,
  });
  factory UserModel.fromFireBaseUser(User user) =>
      UserModel(email: user.email!, password: '', uId: user.uid);
}
