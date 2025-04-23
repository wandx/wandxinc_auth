import 'package:dartz/dartz.dart';
import 'package:wandxinc_auth/src/domain/contracts/authenticable.dart';
import 'package:wandxinc_auth/src/domain/exceptions/auth_exception.dart';

abstract class AuthContract {
  Future<Either<AuthException, Authenticable>> me();

  Future<Either<AuthException, void>> logout();
}
