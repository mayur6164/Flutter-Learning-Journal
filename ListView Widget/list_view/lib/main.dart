import 'package:flutter/material.dart';
import 'package:list_view/my_circle.dart';

import 'my_square.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final List post = const ['post1', 'post2', 'post3'];
  final List story = const ['story1', 'story2', 'story3', 'story4', 'story5'];

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepPurple[100],
        body: Column(
          children: [
            // Instagram Stories Section
            Padding(
              padding: const EdgeInsets.only(top:30),
              child: Container(
                height: 120,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: story.length,
                  itemBuilder: (context, index) {
                    return MyCircle(child: story[index]);
                  },
                ),
              ),
            ),
            // Instagram Post Section
            Expanded(
              child: ListView.builder(
                itemCount: post.length,
                itemBuilder: (context, index) {
                  return MySquare(child: post[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
