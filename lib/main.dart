import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Screens/Home/Components/bottom_app_bar.dart';
// import 'package:healthy_food_ui/Screens/Home/home_page.dart';

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
      title: 'Flutter Demo',
      theme: ThemeData(
        // useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const BottomNavigationAppBar(),
    );
  }
}
