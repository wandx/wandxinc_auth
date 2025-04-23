import 'package:wandxinc_auth/src/domain/contracts/auth_contract.dart';
import 'package:wandxinc_auth/src/domain/use_cases/auth_logout.dart';
import 'package:wandxinc_auth/src/domain/use_cases/auth_me.dart';
import 'package:wandxinc_auth/src/wandxinc_auth.dart';

class AuthService {
  AuthService._();

  static AuthService instance = AuthService._();

  AuthContract get authRepo => WandxincAuth.instance.authRepo;

  AuthMe get me => AuthMe(contract: authRepo);

  AuthLogout get logout => AuthLogout(contract: authRepo);
}
