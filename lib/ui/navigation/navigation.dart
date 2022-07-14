import 'package:flutter/widgets.dart';
import 'package:olx_analog/ui/sign_up/sign_up.dart';

abstract class AppNavigation {
  static const initialRoute = '/sign_up';
  static final routes = <String, Widget Function(BuildContext context)>{
    '/sign_up': (context) => const SignUp(),
  };
}
