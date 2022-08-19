import 'package:flutter/material.dart';
import 'package:test/presentation/presentation.dart';
import 'theme/theme.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final itemsBar = const [
    BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
    BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
    BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Store'),
    BottomNavigationBarItem(
        icon: Icon(Icons.text_snippet), label: 'Order History'),
    BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
  ];

  int _selectedTab = 0;

  void _onSelectTab(int index) {
    if (index == _selectedTab) return;
    setState(() {
      _selectedTab = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: themeData,
      // routes: AppNavigation.routes,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          elevation: 0,
          unselectedItemColor: Colors.green,
          selectedItemColor: Colors.black,
          currentIndex: _selectedTab,
          onTap: _onSelectTab,
          items: itemsBar,
        ),
        body: IndexedStack(
          index: _selectedTab,
          children: const [
            Home(),
            Browse(),
            StoreWidget(),
            OrderHistory(),
            Profile(),
          ],
        ),
      ),
    );
  }
}
