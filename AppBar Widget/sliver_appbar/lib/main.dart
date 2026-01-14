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
      theme: ThemeData(useMaterial3: true),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.deepPurple[200],
        body: CustomScrollView(
          slivers: [
            // Sliver AppBar
            SliverAppBar.large(
              backgroundColor: Colors.deepPurple[500],
              leading: IconButton(
                icon: const Icon(
                  Icons.menu_rounded,
                  color: Colors.white,
                  size: 28,
                ),
                onPressed: () {},
              ),
              pinned: true,
              // expandedHeight: 250,

              // Maximum height
              flexibleSpace: LayoutBuilder(
                builder: (context, constraints) {
                  var top = constraints.biggest.height;
                  bool isCollapsed = top < 110;

                  return FlexibleSpaceBar(
                    centerTitle:true,
                    title: Text(
                      'S L I V E R  A P P B A R',
                      style: TextStyle(
                        color: Colors.white,
                        // Magic Logic Here 👇
                        fontWeight: isCollapsed
                            ? FontWeight.w500
                            : FontWeight.bold,
                        fontSize: 20,
                      ),
                    ),
                    background: Container(color: Colors.deepPurple[300]),
                  );
                },
              ),
            ),

            //Sliver Items
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Container(color: Colors.deepPurple[400], height: 400),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Container(color: Colors.deepPurple[400], height: 400),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: ClipRRect(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  child: Container(color: Colors.deepPurple[400], height: 400),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
