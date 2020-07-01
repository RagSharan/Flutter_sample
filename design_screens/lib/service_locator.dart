import 'package:design_screens/managers/login_manager.dart';
import 'package:get_it/get_it.dart';

GetIt sl = GetIt.instance;

void setUpServiceLocator() {
  // register login manager
  sl.registerLazySingleton<LoginManager>(() => LoginManagerImpl());
}
