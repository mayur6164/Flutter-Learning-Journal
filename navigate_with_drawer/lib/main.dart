import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: HomePage());
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
    Center(child: Text('Home Page')), // index: 0
    Center(child: Text('Person Page')), // index: 1
    Center(child: Text('Settings Page')), // index: 2
    Center(child: Text('Logout Page')), // index: 3
  ];

  @override
  Widget build(BuildContext context) {
    // Scaffold
    return Scaffold(
      // appBar: _titles[_selectedIndex],
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text(_titles[_selectedIndex], style: TextStyle(fontSize: 25)),
        centerTitle: true,
      ),
      // The moment you add this 'drawer' property,
      // Flutter automatically adds the "Hamburger Menu" icon to your AppBar.
      drawer: Drawer(
        width: 250,
        backgroundColor: Colors.grey[200],
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              accountName: Text('Mayur Kariya'),
              accountEmail: Text('mayurgadhvi@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundColor: Colors.blue,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                setState(() {
                  _selectedIndex = 0;
                });
                Navigator.pop(context);
              },
              selected: _selectedIndex == 0,
              selectedColor: Colors.blue,
              selectedTileColor: Colors.blue[50],
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Person'),
              onTap: () {
                setState(() {
                  _selectedIndex = 1;
                });
                Navigator.pop(context);
              },
              selected: _selectedIndex == 1,
              selectedColor: Colors.blue,
              selectedTileColor: Colors.blue[50],
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                setState(() {
                  _selectedIndex = 2;
                });
                Navigator.pop(context);
              },
              selected: _selectedIndex == 2,
              selectedColor: Colors.blue,
              selectedTileColor: Colors.blue[50],
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              iconColor: Colors.red,
              textColor: Colors.red,
              onTap: () {
                setState(() {
                  _selectedIndex = 3;
                });
                Navigator.pop(context);
              },
              selected: _selectedIndex == 3,
              selectedTileColor: Colors.red[50],
              selectedColor: Colors.red,
            ),
          ],
        ),
        // We will build this out next
      ),
      body: _pages[_selectedIndex],
    );
  }
}
