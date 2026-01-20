import 'package:flutter/material.dart';
import 'package:navigate_with_drawer/my_app_drawer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  final List<String> _titles = [
    'Home Page',
    'Person Page',
    'Settings Page',
    'Logout Page',
  ];

  final List<Widget> _pages = [
    Center(child: Text('Home Page',style: TextStyle(fontSize: 50),)),
    Center(child: Text('Home Page',style: TextStyle(fontSize: 50),)),
    Center(child: Text('Person Page',style: TextStyle(fontSize: 50),)),
    Center(child: Text('Settings Page',style: TextStyle(fontSize: 50),)),
    Center(child: Text('Logout Page',style: TextStyle(fontSize: 50),)),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: Colors.white,
        backgroundColor: Colors.blue,
        title: Text(_titles[_selectedIndex], style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      drawer: MyAppDrawer(
        selectedIndex: _selectedIndex,
        onItemTapped: (int index) {
          setState(() {
            _selectedIndex = index;
          });
          Navigator.pop(context);
        },
      ),
      body: _pages[_selectedIndex],
    );
  }
}
