import 'package:flutter/material.dart';
import 'package:olx_analog/themes/theme_data.dart';
import 'package:olx_analog/ui/navigation/navigation.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppNavigation.initialRoute,
      routes: AppNavigation.routes,
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(),
      ),
    );
  }
}
