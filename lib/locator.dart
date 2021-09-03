import 'package:get_it/get_it.dart';
import 'package:minora/src/services/dialog_service.dart';
import 'package:minora/src/services/navigation_service.dart';
import 'package:minora/src/services/web_api/authentication_service.dart';




GetIt locator = GetIt.instance;

void setupLocator() {
  locator.registerLazySingleton(() => NavigationService());
  locator.registerLazySingleton(() => DialogService());
  locator.registerLazySingleton(() => AuthenticationService());
}
