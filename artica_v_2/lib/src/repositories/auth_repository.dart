import 'package:artica_v_2/src/resources/services/auth_service.dart';

class AuthRepository {
  final authService = AuthService();

  authenticate(String email, String password) {
    return authService.login();
  }
}
