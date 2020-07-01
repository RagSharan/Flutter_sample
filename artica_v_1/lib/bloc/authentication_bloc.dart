import 'dart:async';

import '../models/credential.dart';
import '../services/authentication_service.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  final AuthenticationService authenticationService;

  AuthenticationBloc(this.authenticationService);

  @override
  AuthenticationState get initialState => AuthenticationInitial();

  @override
  Stream<AuthenticationState> mapEventToState(
      AuthenticationEvent event) async* {
    yield AuthenticationLoading();
    if (event is SigninAuthentication) {
      try {
        final credential = await authenticationService.signIn(event.cred);
        yield AuthenticationLoaded(credential);
      } on Error {
        yield AuthenticationError("User is not able to Authenticate");
      }
    } else if (event is RegisterAuthentication) {
      try {
        final credential = await authenticationService.register(event.cred);
        yield AuthenticationLoaded(credential);
      } on Error {
        yield AuthenticationError("User is not able to Authenticate");
      }
    }
  }
}
