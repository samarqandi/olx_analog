import 'package:flutter/widgets.dart';
import 'package:olx_analog/ui/main/main_page.dart';
import 'package:olx_analog/ui/sign_up/sign_up.dart';

abstract class AppNavigation {
  static final defaultRoute = '/'; //: (context) => Main();
  static final routes = <String, Widget Function(BuildContext context)>{
    '/': (context) => const Main(),
    '/sign_up': (context) => const SignUp(),
  };
}
