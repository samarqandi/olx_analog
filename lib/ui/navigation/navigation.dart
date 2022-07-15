import 'package:flutter/widgets.dart';
import 'package:olx_analog/ui/main/main_page.dart';
import 'package:olx_analog/ui/navigation/app_routes.dart';
import 'package:olx_analog/ui/sign_up/sign_up.dart';

abstract class AppNavigation {
  static const initialRoute = AppRoutes.initialRoute;
  static final routes = <String, Widget Function(BuildContext context)>{
    AppRoutes.home: (context) => const Main(),
    AppRoutes.signUp: (context) => const SignUp(),
  };
}
