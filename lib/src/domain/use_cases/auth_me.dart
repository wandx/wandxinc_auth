import 'package:dartz/dartz.dart';
import 'package:wandxinc_auth/src/domain/contracts/auth_contract.dart';
import 'package:wandxinc_auth/src/domain/contracts/authenticable.dart';
import 'package:wandxinc_core/wandxinc_core.dart';

class AuthMe extends BaseUseCase<Authenticable, void> {
  AuthMe({required AuthContract contract}) : _contract = contract;

  final AuthContract _contract;

  @override
  Future<Either<BaseException, Authenticable>> call(void params) =>
      _contract.me();
}
