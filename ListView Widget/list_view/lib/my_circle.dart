import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  const MyCircle({required this.child, super.key});

  final String child;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        // margin: EdgeInsets.only(top: 15),
        width: 100,
        height: 100,
        decoration: BoxDecoration(
          color: Colors.deepPurple[200],
          shape: BoxShape.circle,
        ),
        child: Center(child: Text(child, style: TextStyle(fontSize: 20))),
      ),
    );
  }
}
