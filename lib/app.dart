import 'package:flutter/material.dart';
import 'package:olx_analog/theme/theme_data.dart';
import 'package:olx_analog/ui/navigation/navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: AppNavigation.routes,
      initialRoute: AppNavigation.initialRoute,
      theme: themeData,
    );
  }
}
