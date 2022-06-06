import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
            unselectedItemColor: Colors.black26,
            selectedItemColor: Colors.black54,
            backgroundColor: Colors.amber,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.abc),
                label: 'home',
              ),
            ]),
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
          child: Container(
            child: const Text('Hello World'),
          ),
        ),
      ),
    );
  }
}
