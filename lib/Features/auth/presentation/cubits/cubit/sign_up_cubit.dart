import 'package:bloc/bloc.dart';
import 'package:ecommerce_app/Features/auth/domain/entities/user_entiteis.dart';
import 'package:ecommerce_app/Features/auth/domain/repos/auth_repo.dart';
import 'package:meta/meta.dart';

part 'sign_up_state.dart';

class SignUpCubit extends Cubit<SignUpState> {
  SignUpCubit(this.authRepo) : super(SignUpInitial());
  final AuthRepo authRepo;
  Future<void> createUser(UserEntiteis user) async {
    emit(SignUpLoading());
    var result = await authRepo.createEmailAndPassword(
      email: user.email,
      password: user.password,
    );
    result.fold(
      (failure) => emit(SignUpFailure(failure.message)),
      (user) => emit(SignUpSuccess(user)),
    );
  }
}
