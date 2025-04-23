part of 'auth_cubit.dart';

class AuthState {
  AuthState({
    this.loading = false,
    this.loggedOut = false,
    this.user = const None(),
    this.errorMessage = const None(),
  });

  final bool loading;
  final bool loggedOut;
  final Option<Authenticable> user;
  final Option<String> errorMessage;

  AuthState copyWith({
    bool? loading,
    bool? loggedOut,
    Option<Authenticable>? user,
    Option<String>? errorMessage,
  }) {
    return AuthState(
      loading: loading ?? this.loading,
      loggedOut: loggedOut ?? this.loggedOut,
      user: user ?? this.user,
      errorMessage: errorMessage ?? this.errorMessage,
    );
  }

  @override
  String toString() {
    return 'loading: $loading|loggedOut: $loggedOut|user: $user|errorMessage: $errorMessage';
  }
}
