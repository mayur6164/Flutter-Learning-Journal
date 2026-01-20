import 'package:flutter/material.dart';

class MyAppDrawer extends StatelessWidget {
  final int selectedIndex;
  final Function(int) onItemTapped;

  const MyAppDrawer({
    required this.selectedIndex,
    required this.onItemTapped,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      width: 265,
      backgroundColor: Colors.grey[200],
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: Colors.blue),
            accountName: Text('Mayur Kariya'),
            accountEmail: Text('mayurgadhvi@gmail.com'),
            currentAccountPicture: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 1),
                // Custom border
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/profile.jpg'),
                ),
              ),
            ),
          ),
          ListTile(
            leading: Icon(Icons.home),
            title: Text('Home'),
            onTap: () {
              onItemTapped(0);
            },
            selected: selectedIndex == 0,
            selectedColor: Colors.blue,
            selectedTileColor: Colors.blue[50],
          ),
          ListTile(
            leading: Icon(Icons.person),
            title: Text('Person'),
            onTap: () {
              onItemTapped(1);
            },
            selected: selectedIndex == 1,
            selectedColor: Colors.blue,
            selectedTileColor: Colors.blue[50],
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              onItemTapped(2);
            },
            selected: selectedIndex == 2,
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
              onItemTapped(3);
            },
            selected: selectedIndex == 3,
            selectedTileColor: Colors.red[50],
            selectedColor: Colors.red,
          ),
        ],
      ),
      // We will build this out next
    );
  }
}
