import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:wandxinc_auth/src/domain/contracts/authenticable.dart';
import 'package:wandxinc_auth/src/services/auth_service.dart';
import 'package:wandxinc_core/wandxinc_core.dart';

part 'auth_state.dart';

class AuthCubit extends Cubit<AuthState> {
  AuthCubit() : super(AuthState());

  void me() {
    emit(AuthState(loading: true));
    AuthService.instance.me(null).then(
          (res) => res.fold(
            (l) => emit(AuthState(errorMessage: some(l.message))),
            (r) => emit(AuthState(user: some(r))),
          ),
        );
  }

  void logout() {
    emit(AuthState(loading: true));
    WandxincCore.instance.clearToken();
    emit(AuthState(loggedOut: true));
  }
}
