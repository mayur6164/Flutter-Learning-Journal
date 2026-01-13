import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text('Simple AppBar', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.blue[400],
          elevation: 0,
          centerTitle: true,
          leading: IconButton(
            onPressed: () {
              // Open Menu
            },
            icon: Icon(Icons.menu_rounded, color: Colors.white),
          ),
          actions: [
            IconButton(
              onPressed: () {
                // Open Share App PopUp
              },
              icon: Icon(Icons.share, color: Colors.white),
            ),
            IconButton(
              onPressed: () {
                // Open Share App PopUp
              },
              icon: Icon(Icons.person, color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
