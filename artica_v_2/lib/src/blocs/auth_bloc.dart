import 'package:artica_v_2/src/mixins/validator.dart';
import 'package:artica_v_2/src/repositories/auth_repository.dart';
import 'package:rxdart/rxdart.dart';

class AuthBloc extends Object with Validator {
  final _email = BehaviorSubject<String>();
  final _password = BehaviorSubject<String>();

  Stream<String> get email => _email.stream.transform(validateEmail);
  Stream<String> get password => _password.stream.transform(validatePassword);

  Stream<bool> get validSubmit =>
      Observable.combineLatest2(email, password, (e, p) => true);

  Function(String) get changeEmail => _email.sink.add;
  Function(String) get changePassword => _password.sink.add;

  submit() {
    final email = _email.value;
    final password = _password.value;
    final repo = AuthRepository();
    repo.authenticate(email, password);
  }

  dispose() {
    _email.close();
    _password.close();
  }
}
