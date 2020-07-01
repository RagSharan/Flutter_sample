part of 'authentication_bloc.dart';

abstract class AuthenticationState extends Equatable {
  const AuthenticationState();
}

class AuthenticationInitial extends AuthenticationState {
  const AuthenticationInitial();
  @override
  List<Object> get props => [];
}

class AuthenticationLoading extends AuthenticationState {
  const AuthenticationLoading();
  @override
  List<Object> get props => [];
}

class AuthenticationLoaded extends AuthenticationState {
  final Credential credential;
  const AuthenticationLoaded(this.credential);
  @override
  List<Object> get props => [credential];
}

class AuthenticationError extends AuthenticationState {
  final String message;
  const AuthenticationError(this.message);
  @override
  List<Object> get props => [message];
}
