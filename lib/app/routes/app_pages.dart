import 'package:get/route_manager.dart';
import 'package:trance_me/app/routes/app_routes.dart';
import 'package:trance_me/app/ui/android/home_page.dart';
import 'package:trance_me/app/ui/android/initial_page.dart';
import 'package:trance_me/app/ui/android/login_page.dart';

class AppPages {
  static final routes = [
    GetPage(name: Routes.INITIAL, page: () => const InitialPage()),
    GetPage(name: Routes.LOGIN, page: () => const LoginPage()),
    GetPage(name: Routes.HOME, page: () => const HomePage()),
  ];
}
