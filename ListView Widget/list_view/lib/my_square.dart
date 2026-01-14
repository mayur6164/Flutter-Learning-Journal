import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  const MySquare({super.key, required this.child});

  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        color: Colors.deepPurple[200],
        height: 400,
        child: Center(child: Text(child, style: TextStyle(fontSize: 50))),
      ),
    );
  }
}
