import 'package:wandxinc_auth/src/domain/contracts/auth_contract.dart';

/// {@template wandxinc_auth}
/// A Very Good Project created by Very Good CLI.
/// {@endtemplate}
class WandxincAuth {
  WandxincAuth._();

  static WandxincAuth instance = WandxincAuth._();

  late AuthContract authRepo;
}
