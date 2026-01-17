import 'package:flutter/material.dart';
import 'package:navigation_with_bottomBar/pages/home_page.dart';
import 'package:navigation_with_bottomBar/pages/profile_page.dart';
import 'package:navigation_with_bottomBar/pages/setting_page.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  // To track current page
  int _selectIndex = 0;

  // List of Pages
  final List _pages = [
    // Home Page
    HomePage(),
    // Profile Page
    ProfilePage(),
    // Settings Page
    SettingPage(),
  ];

  // This method updates new selected index
  void _navigateBottomBar(int index) {
    setState(() {
      _selectIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],
      appBar: AppBar(
        centerTitle: false,
        title: Text('Navigation Bar'),
        backgroundColor: Colors.deepPurple[600],
        leading: IconButton(onPressed: () {}, icon: Icon(Icons.nat)),
        actions: [
          // IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: Icon(Icons.logout)),
        ],

      ),
      // --

      // Body of FirstPage
      body: _pages[_selectIndex],
      // --

      // Bottom NavigationBar of FirstPage
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectIndex,
        onTap: _navigateBottomBar,

        backgroundColor: Colors.deepPurple[500],
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white60,

        selectedIconTheme: const IconThemeData(size: 30, opacity: 1),
        unselectedIconTheme: const IconThemeData(size: 24, opacity: 0.6),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),

        items: [
          // Home
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            tooltip: 'Home',
          ),
          //Profile
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            tooltip: 'Profile',
          ),
          //Settings
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
            tooltip: 'Settings',
          ),
        ],
      ),
      // --
    );
  }
}
