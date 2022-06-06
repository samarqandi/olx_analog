import 'package:flutter/material.dart';
import 'package:olx_analog/bottom_nav_bar.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.teal,
      ),
      title: 'OLX analog',
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          bottomNavigationBar: BottomNavigationBar(
              unselectedItemColor: Colors.black26,
              selectedItemColor: Colors.black54,
              backgroundColor: Colors.amberAccent,
              items: bottomNavBar),
          appBar: AppBar(
            title: Container(
              width: double.infinity,
              height: 40,
              color: Colors.white,
              child: const Center(
                child: TextField(
                  decoration: InputDecoration(
                    hintText: 'Search',
                    prefixIcon: Icon(Icons.search),
                  ),
                ),
              ),
            ),
          ),
          body: Center(
            child: CircleAvatar(
              radius: 24.0,
              backgroundImage: AssetImage("assets/icon/icon.png"),
            ),
          )),
    );
  }
}
