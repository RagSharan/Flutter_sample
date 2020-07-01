import 'package:design_screens/models/credential.dart';
import 'package:rx_command/rx_command.dart';
//import 'package:rxdart/rxdart.dart';

abstract class LoginManager {
  RxCommand<Credential, String> authenticate;
}

class LoginManagerImpl implements LoginManager {
  LoginManagerImpl() {
    authenticate = RxCommand.createSync<Credential, String>((cred) {
      return;
    });
  }
  //Credential _cred;
  @override
  RxCommand<Credential, String> authenticate;
}
