import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[300],

      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 30,vertical: 80),
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(color: Colors.deepPurple[500],borderRadius: BorderRadius.circular(10)),
        child: Center(child: Text('Settings Page', style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold))),
      ),
    );
  }
}
