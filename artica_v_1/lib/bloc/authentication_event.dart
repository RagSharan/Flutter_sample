part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();
}

class SigninAuthentication extends AuthenticationEvent {
  final Credential cred;

  const SigninAuthentication(this.cred);

  @override
  List<Object> get props => [cred];
}

class RegisterAuthentication extends AuthenticationEvent {
  final Credential cred;

  const RegisterAuthentication(this.cred);

  @override
  List<Object> get props => [cred];
}
