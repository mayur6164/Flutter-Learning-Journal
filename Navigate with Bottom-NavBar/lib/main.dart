import 'package:flutter/material.dart';
import 'package:navigation_with_bottomBar/pages/first_page.dart';
import 'package:navigation_with_bottomBar/pages/home_page.dart';
import 'package:navigation_with_bottomBar/pages/setting_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      routes: {
        'home_page': (context) => HomePage(),
        'setting_page': (context) => SettingPage(),
      },
      theme: ThemeData(
        useMaterial3: true,
        textTheme: ThemeData.light().textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
        appBarTheme: const AppBarTheme(
          centerTitle: true,
          titleTextStyle: TextStyle(color: Colors.white, fontSize: 25),
          iconTheme: IconThemeData(color: Colors.white),
        ),
      ),
      home: FirstPage(),
    );
  }
}
