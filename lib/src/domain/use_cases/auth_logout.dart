import 'package:dartz/dartz.dart';
import 'package:wandxinc_auth/src/domain/contracts/auth_contract.dart';
import 'package:wandxinc_core/wandxinc_core.dart';

class AuthLogout extends BaseUseCase<void, void> {
  AuthLogout({required AuthContract contract}) : _contract = contract;

  final AuthContract _contract;

  @override
  Future<Either<BaseException, void>> call(void params) {
    return _contract.logout();
  }
}
