import 'package:flutter/material.dart';
import 'package:healthy_food_ui/Screens/Home/home_page.dart';
import 'package:healthy_food_ui/constant.dart';

class BottomNavigationAppBar extends StatefulWidget {
  const BottomNavigationAppBar({super.key});

  @override
  State<BottomNavigationAppBar> createState() => _BottomNavigationAppBarState();
}

class _BottomNavigationAppBarState extends State<BottomNavigationAppBar> {
  int currentTab = 0;
  final List screens = [
    const HomePage(),
    // const DetailScreen(),
    // const BoltScreen(),
    // const ShoppingScreen(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const HomePage();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        bucket: bucket,
        child: currentScreen,
      ),
      bottomNavigationBar: BottomAppBar(
        height: 60,
        color: const Color(0xff131923),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            MaterialButton(
              onPressed: () {
                setState(() {
                  currentScreen = const HomePage();
                  currentTab = 0;
                });
              },
              child: Icon(
                Icons.home_filled,
                color:
                    currentTab == 0 ? selectedIconColor : unSelectedIconColor,
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const DetailScreen();
                  currentTab = 1;
                });
              },
              child: Icon(
                Icons.widgets,
                color:
                    currentTab == 1 ? selectedIconColor : unSelectedIconColor,
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const BoltScreen();
                  currentTab = 2;
                });
              },
              child: Icon(
                Icons.bolt,
                color:
                    currentTab == 2 ? selectedIconColor : unSelectedIconColor,
                size: 30,
              ),
            ),
            MaterialButton(
              onPressed: () {
                setState(() {
                  // currentScreen = const ShoppingScreen();
                  currentTab = 3;
                });
              },
              child: Icon(
                Icons.shopping_bag,
                color:
                    currentTab == 3 ? selectedIconColor : unSelectedIconColor,
                size: 30,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
